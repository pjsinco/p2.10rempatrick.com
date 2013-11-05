<?php
/* this is a practice controller copied from class website */

class users_controller extends base_controller 
{

  public function __construct() 
  {
    parent::__construct();
  } 
  
  public function index() 
  {
    // set up the head
    $this->template->title = 'ArgyBargy';
    $client_files_head = Array('/css/main.css');
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);

    // set up the body
    $this->template->content = View::instance('v_users_index');

    // render the template
    echo $this->template;
    
  }

  public function signup($error = null)
  {
    /********************************************************/
    /*     DON"T APPPEND '.php' to View instances           */
    /********************************************************/

    // set up the head
    $this->template->title = 'Sign up for ArgyBargy';
    $client_files_head = Array('/css/main.css');
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);

    // set up the body
    $this->template->content = View::instance('v_users_signup');
    
    // pass error to view, if one exists
    $this->template->content->error = $error; 

    // render template
    echo $this->template;
  }

  public function p_signup()
  {
    // 4 error possibilities:
        //1. blank fields
        //2. user name taken
        //3. email taken
        //4. some other error 

    // 1. if any fields are blank, send error message
    foreach ($_POST as $field => $value) {
      if(empty($value)) {
        Router::redirect('/users/signup/blank_fields');
      }
    }

    // 2. if user_name is taken, send error message
    if ($this->username_exists($_POST['user_name'])) {
      Router::redirect('/users/signup/username_exists');
    }
    //$q = "
      //SELECT user_name
      //FROM users
      //WHERE user_name = '" . $_POST['user_name'] . "'
    //";
    //$result = DB::instance(DB_NAME)->select_field($q);
    //if ($result) {
      //Router::redirect('/users/signup/username-exists');
    //}


    /*************************************************************/
    //I know the User class's signup() method calls
    //confirm_unique_email, but I don't know how to handle
    //the query string it appends to the url
    /*************************************************************/

    // 3. if email is taken, send error message
    //if (!$this->userObj->confirm_unique_email($_POST['email'])) {
      //Router::redirect('/users/signup/email-exists');
    //}

    $result = $this->userObj->signup($_POST);

    // success
    if ($result) {
      // log in user automatically
      $token = $this->userObj->login($_POST['email'], $_POST['password']);

      // send new user to edit_profile
      Router::redirect('/users/edit_profile/new-user/' .
        $_POST['user_name']);


      //redirect user to login page
      //Router::redirect('/users/login/new-user/' . $_POST['user_name']);
      // 4. if some other error occurs, send general error message
    } else {
      Router::redirect('/users/signup/error');
    }
  }
  
  public function login($flag = null, $user_name = null)
  {
    /********************************************************/
    /*     DON"T APPPEND '.php' to View instances           */
    /********************************************************/

    //echo Debug::dump($_GET); 
    if (isset($_GET['error']) and $_GET['error'] == 'dupemail') {
      Router::redirect('/users/signup/email_exists');   
    }

    // set up the head
    $this->template->title = 'Log in to ArgyBargy';
    $client_files_head = array('/css/main.css');
    $this->template->client_files_head =
      Utils::load_client_files($client_files_head);

    // set up the body
    $this->template->content = View::instance('v_users_login');

    // pass flag to view
    $this->template->content->flag = $flag;
    $this->template->content->user_name = $user_name;

    // render template
    echo $this->template;
  }

  /*
   *some code from http://screencast.com/t/U6NXOC3rH
   */
  public function p_login()
  {
    // error possibilities
        //1. blank fields
        //2. user doesn't exist

    // 1. if any fields are blank, send error message
    foreach ($_POST as $field => $value) {
      if (empty($value)) {
        Router::redirect('/users/login/blank-fields');
      }
    }

    $email = $_POST['email'];
    $token = $this->userObj->login($email, $_POST['password']);
    // success
    if ($token) {
      $this->userObj->login_redirect($token, $email, '/posts/stream');
    // 2. if user doesn't exists, send error message
    } else {
      Router::redirect('/users/login/no-user');
    }

  }
  
  public function logout()
  {
    $this->userObj->logout($this->user->email);
    Router::redirect("/");
  }

  public function edit_profile($user_name = null, $error = null)
  {
    // NOTE: $user_name is essentially a placeholder 
    // so we can get at the $error arg in the view
    $this->template->title= 'Edit profile';
    $client_files_head = Array('/css/main.css');

     //Load client files 
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);
    
    // set up the body
    $this->template->content = View::instance('v_users_edit_profile');

    // pass error to view
    $this->template->content->error = $error;
  
    //Render the view
    echo $this->template;
  }

  public function p_edit_profile() 
  {
    // error possibilities:
      //1. email blank
      //2. email taken
      //3. db error

    // 1. make sure the mail field isn't blank
    if (empty($_POST['email'])) {
      Router::redirect('/users/edit_profile/' . 
        $this->user->user_name . '/email_blank');
    }
    
    // 2. check to make sure email isn't taken
    // get user_id, if any, of email
    $q = "
      select user_id
      from users
      where email = '" . $_POST['email'] . "'
    ";

    if (!$this->userObj->confirm_unique_email($_POST['email']) &&
      DB::instance(DB_NAME)->select_field($q) != $this->user->user_id) {
      Router::redirect('/users/edit_profile/' . 
        $this->user->user_name . '/email_exists');
    }

    //echo Debug::dump($_POST);  
    $user_id = $this->user->user_id;
    $result = 
      DB::instance(DB_NAME)->update(
        'users', $_POST, "WHERE user_id = $user_id");

    if ($result) {
      Router::redirect('/users/profile/' . $this->user->user_name);
    } else {
      Router::redirect('/users/edit_profile/error');
      
    }

  }

  public function profile($user_name = NULL)
  {
    if (!$this->user) {
      //Router::redirect('/'); // sorry, go back to home page
      die('Members only. <a href="/users/login">Login</a>');
    }

    // set up the view
    $this->template->title = 'Profile for ' . 
      ($user_name == NULL ? $this->user->user_name : $user_name);
    $client_files_head = Array('/css/main.css');
    
    /* Load client files */
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);

    // get user_id of passed $user_name
    $q = "
      select user_id
      from users
      where user_name = '";
    $q .= ($user_name == NULL ? 
      $this->user->user_name : $user_name);
    $q .= "'";
    
    $user_id = DB::instance(DB_NAME)->select_field($q);
  
    // get post, follower, following counts
    $counts = $this->get_counts($user_id);

    //echo Debug::dump($counts);
    
    /* PASS DATA TO THE VIEW */
    $this->template->content = View::instance('v_users_profile');
    $this->template->content->post_count = $counts['post_count'];
    $this->template->content->followers_count = 
      $counts['followers_count'];
    $this->template->content->following_count = 
      $counts['following_count'];

    // if user (peeker) is looking at someone else's (peeked) profile ...
    // pass peeked's profile info to view 
    if ($user_name != $this->user->user_name) {
      $q = "
        SELECT first_name, last_name, email, location, bio
        FROM users
        WHERE user_name = '" . $user_name . "'
      ";
      $user = DB::instance(DB_NAME)->select_row($q, 'assoc');
      if ($user) {
        // peeker is a flag for the view to check
        $this->template->content->peeker = true;
        $this->template->content->user_name = $user_name;
        $this->template->content->first_name = $user['first_name'];
        $this->template->content->last_name = $user['last_name'];
        $this->template->content->email = $user['email'];
        $this->template->content->location = $user['location'];
        $this->template->content->bio = $user['bio'];
      }
    }

    /* DISPLAY */
    echo $this->template;
  }
  
  /*-----------------------------------------------------------------
  Get counts of posts, followers and followings for user
  Param:
    $user_id string
  Returns:
    associative array of counts:
    (
      'post_count' => ..., 
      'followers_count' => ..., 
      'following_count' => ...
    )
  -----------------------------------------------------------------*/
  public function get_counts($user_id) 
  {
    // get count of posts
    $q = "
      SELECT count(*)
      FROM posts
      WHERE user_id = " . $user_id;
    $post_count = DB::instance(DB_NAME)->select_field($q);

    // get count of followers
    $q = "
      SELECT count(*)
      FROM users_users
      WHERE user_id_followed = " . $user_id;
    $followers_count = DB::instance(DB_NAME)->select_field($q);

    // get count of followings
    $q = "
      SELECT count(*)
      FROM users_users
      WHERE user_id = " . $user_id;
    $following_count = DB::instance(DB_NAME)->select_field($q);

    return array(
      'post_count' => $post_count,
      'followers_count' => $followers_count,
      'following_count' => $following_count
    );
    
  }
  
  /*------------------------------------------
    Purpose: Check to see if a user_name exists
    Params: 
      $user_name String
    Returns: boolean
  /*------------------------------------------*/
  private function username_exists($user_name)
  {
    $q = "
      SELECT user_name
      FROM users
      WHERE user_name = '" . $user_name . "'
    ";

    $result = DB::instance(DB_NAME)->select_field($q);
    return ($result == null ? False : True);
  }

  public function users()
  {
    // set up the head
    $this->template->title = APP_NAME . ' | People';
    $client_files_head = Array(
      '/css/main.css'
    );
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);

    // set up the body
    $this->template->content = View::instance('v_users_users');
  
    // build query; be sure to not include $this->user
    $q = "
      select user_name, user_id
      from users
      where user_id != " . $this->user->user_id;

    // get list of all users
    $users = DB::instance(DB_NAME)->select_rows($q, 'assoc');

    // build query to figure out connections user has
    // iow, who are they following?
    $q = "
      select *
      from users_users
      where user_id = " . $this->user->user_id;

    // get array of all people user is following
    $connections = 
      DB::instance(DB_NAME)->select_array($q, 'user_id_followed');
    
    //echo Debug::dump($connections);
    //echo Debug::dump($connections[0]);

    // pass array of users, connections to view
    $this->template->content->users = $users;
    $this->template->content->connections = $connections;

    // render template
    echo $this->template;

  }
  
  // for fun
  public function all_globals()
  {
    echo '<pre>';  
    echo '<br>$_ENV<br>';
    print_r($_ENV);
    echo '<br>$_SERVER<br>';
    print_r($_SERVER);
    echo '<br>$_GET<br>';
    print_r($_GET);
    echo '<br>$_POST<br>';
    print_r($_POST);
    echo '<br>$_FILES<br>';
    print_r($_FILES);
    echo '<br>$_REQUEST<br>';
    print_r($_REQUEST);
    echo '<br>$_SESSION<br>';
    print_r($_SESSION);
    echo '<br>$_COOKIE<br>';
    print_r($_COOKIE);
    echo '<br>$argc<br>';
    print_r($argc);
    echo '<br>$argv<br>';
    print_r($argv);
    echo '<br><br><br><br>';
    echo '</pre>';  
  }
  
} // eoc
?>
