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
<<<<<<< HEAD
    // sanitize user-entered data
    $_POST = DB::instance(DB_NAME)->sanitize($_POST);

    // salt the password
    $_POST['password'] = sha1(PASSWORD_SALT . $_POST['password']);

    // get the user's token if we have it
    $q = "
      SELECT token
      FROM users
      WHERE password = '" . $_POST['password'] . 
        "' AND user_name = '" . $_POST['user_name'] . "'";
=======
    // error possibilities
        //1. blank fields
        //2. user doesn't exist

    // 1. if any fields are blank, send error message
    foreach ($_POST as $field => $value) {
      if (empty($value)) {
        Router::redirect('/users/login/blank-fields');
      }
    }
>>>>>>> clean-users-controller

    $email = $_POST['email'];
    $token = $this->userObj->login($email, $_POST['password']);
    if ($token) {
      $this->userObj->login_redirect($token, $email, '/users/index/');
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
      //1. email taken
      //2. db error

    // 1. check to make sure email isn't taken
    // get user_id, if any, of email
    $q = "
      select user_id
      from users
      where email = '" . $_POST['email'] . "'
    ";
    //echo Debug::dump($_POST['email']);
    //echo Debug::dump($this->user->user_id);
    //echo Debug::dump(DB::instance(DB_NAME)->select_field($q));
    //echo Debug::dump($this->userObj->confirm_unique_email($_POST['email']));
    if (!$this->userObj->confirm_unique_email($_POST['email']) &&
      DB::instance(DB_NAME)->select_field($q) != $this->user->user_id) {
      Router::redirect('/users/edit_profile/' . 
        $this->user->user_name . '/email_exists');
    }

    //if (!$this->userObj->confirm_unique_email($_POST['email'])) {
      //Router::redirect('/users/edit_profile/' . 
        //$this->user->user_name . '/email_exists');
    //}
      
    //echo Debug::dump($_POST);  
    $user_id = $this->user->user_id;
    $result = 
      DB::instance(DB_NAME)->update(
        'users', $_POST, "WHERE user_id = $user_id");

    Router::redirect('/users/profile/' . 
      $this->user->user_name);

  }

  public function profile($user_name = NULL)
  {
    if (!$this->user) {
      //Router::redirect('/'); // sorry, go back to home page
      die('Members only. <a href="/users/login">Login</a>');
    }
    /* SET UP THE VIEW */
    // cool: add title on the fly!
    $this->template->title = 'Profile for ' . $this->user->user_name;
    
    /* Make array of all files to go into head of document */
    $client_files_head = Array(
      '/css/main.css'
    );
    
    /* Load client files */
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);
    
    /* PASS DATA TO THE VIEW */
    $this->template->content = View::instance('v_users_profile');
    //$this->template->content->user_name = $user_name;
    //$this->template->content->color = 'linen';

    //$q = "select user_name from users where first_name = '$user_name'";
    //$this->template->content->email = $q;
    
    /* Load client files */
    //$this->template->client_files_body = 
      //Utils::load_client_files($client_files_body);
    
    /* DISPLAY */
    echo $this->template;
    
  }
  
  //public function cookie_monster()
  //{
    //setcookie('oatmeal', 'yummy', strtotime('+1 year'), '/');
    //setcookie('chocochip', 'mmm', strtotime('+1 year'), '/');
    //setcookie('raisin', 'awesome', strtotime('+1 year'), '/');
  //}

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
  
  // for fun
  public function env()
  {
    echo '<pre>';  
    print_r($_ENV);
    echo '</pre>';  
  } 
  
  public function form_prac() {
    $this->template->content = View::instance('v_users_form_prac');
    $this->template->title = 'Form practice';
    
    $client_files_head = Array(
      '/css/main.css'
    );
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);

    // make a form
    $form = new Form();

    $this->content->form = $form->open('form', '/users/p_form_prac');

    echo $this->template;
    
  }

  public function p_form_prac() {

  }


  // for fun
  public function global_server()
  {
    echo '<pre>';  
    print_r($_SERVER);
    echo '</pre>';  
  } 
} // eoc
?>
