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
    echo "This is the index page.";
  }

  /* 
    This method processes the signup form

    What do we want to display on the page?
    - show a confirmation?
    - redirect to login page?
    - redirect to home page?
      - to use a redirect, the Router class will help
      - ex.: Router::redirect('/users/login');
    *** Remember we need to see if the user already exists
      in the db before adding him              ***
  */
  public function signup($error = NULL, $taken = NULL)
  {
    /********************************************************/
    /*          DON"T APPPEND '.php' to instances           */
    /********************************************************/
    $this->template->content = View::instance('v_users_signup');

    $this->template->title = 'Sign up for ArgyBargy';
    $client_files_head = Array(
      '/css/main.css'
    );
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);
    
    
    //echo '<pre>c signup'; var_dump($error); echo '</pre>';
    //echo '<pre>c signup'; var_dump($taken); echo '</pre>';
    if (isset($error)) {
      $this->template->content->taken = $taken;
       //pass in the email so user doesn't have to retype it
    }
//    $this->template->client_files_body = 
//      Utils::load_client_files($client_files_body);
    
    echo $this->template;
  }

  public function p_signup()
  {
    //we need to modify $_POST a little bit before
    //making the database call
    $_POST['created'] = Time::now();

    // add some salt to encryption to make it even more difficult
    // to crack
    $_POST['password'] = sha1(PASSWORD_SALT . $_POST['password']);

    // token is like a wristband that lets user back in
    // when he comes back
    // our token is our token salt + email + a random string
    $rand_string = Utils::generate_random_string();
    $_POST['token'] = 
      sha1(TOKEN_SALT . $_POST['email'] . $rand_string);
    
    // make sure user_name isn't already taken
    $q = "
      SELECT user_name
      FROM users
      WHERE user_name = '" . $_POST['user_name'] . "'";
    $username_taken = DB::instance(DB_NAME)->select_field($q);
    //echo '<pre>'; var_dump($result); echo '</pre>'; // debug

    // make sure email isn't already taken
    $q = "
      SELECT email
      FROM users
      WHERE email = '" . $_POST['email'] . "'";
    $email_taken = DB::instance(DB_NAME)->select_field($q);
    //echo '<pre>'; var_dump($result); echo '</pre>'; // debug

    if ($username_taken != NULL) {
      // hold onto to email to prefill form
      $_SESSION['email'] = $_POST['email'];
      Router::redirect('/users/signup/error/name/');
    } else if ($email_taken != NULL) {
      // hold onto to username to prefill form
      $_SESSION['user_name'] = $_POST['user_name'];
      Router::redirect('/users/signup/error/email/');
    } else { // username, email check out OK
      DB::instance(DB_NAME)->insert_row('users', $_POST);
      /* redirect user to login page */
      //NOTE: DON'T ECHO ANYTHING BEFORE CALLING REDIRECT
      Router::redirect('/users/login/new_user');
    } 

  }
  
  public function login($error = NULL)
  {
    // set up the head
    $this->template->title = 'Log in to ArgyBargy';
    $client_files_head = array('/css/main.css');
    $this->template->client_files_head =
      Utils::load_client_files($client_files_head);

    echo Debug::dump($error);

    // set up the view
    $this->template->content = View::instance('v_users_login');

    // if we have a login fail, pass that info to view
    if ($error) {
      //echo '<pre>'; var_dump($error); echo '</pre>';
      $this->template->content->error = $error;
    }

    echo $this->template;
  }

  /*
   *We just need to check the token when verifying whether 
   *a user can log in
   */
  public function p_login()
  {
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

    $token = DB::instance(DB_NAME)->select_field($q);
  
    // success
    if ($token) {
      // send to home page? send to dashboard?
      // say congrats and show a menu of where to go?
      
      // we need to set a cookie so next time user comes back
      // we don't have to go thru this process again
      // note: '/' says: let this cookie be accessible to
      //    every directory on my domain
      setcookie('token', $token, strtotime('+1 year'), '/');
      Router::redirect('/users/edit_profile');
      
    // failure
    } else {
      // display fail message with 'back' button to try again?
      // or send back ourselves with some error messages?

      Router::redirect('/users/login/error/');
    }


  }
  
  public function logout()
  {
    $this->template->title = 'Log out of ArgyBargy';
    $client_files_head = Array('/css/main.css');

    /* Load client files */
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);
  
    echo $this->template;
    
  }

  public function edit_profile()
  {
    $this->template->title= 'Edit profile';
    $client_files_head = Array('/css/main.css');

    /* Load client files */
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);
  
    $this->template->content = View::instance('v_users_edit_profile');
    //Render the view
    echo $this->template;
  }

  public function p_edit_profile() 
  {

  }
  
  /*
   * TODO what param to pass into profile?
      email? 
      if we don't pass anything, how do we know who
      we're looking at?
   */
  public function profile($user_name = NULL)
  {
    if (!$this->user) {
      //Router::redirect('/'); // sorry, go back to home page
      die('Members only. <a href="/users/login">Login</a>');
    }
    /* SET UP THE VIEW */
    // note: we can say $this->template because
    // $this->template is already set up for us in
    // base_controller.
    // cool: add title on the fly!
    $this->template->title = 'Profile for ... ';
    
    /* Make array of all files to go into head of document */
    $client_files_head = Array(
      '/css/main.css'
    );
    //$client_files_body = Array('/js/sample-app.js');
    
    /* Load client files */
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);
    
    /* PASS DATA TO THE VIEW */
    $this->template->content = View::instance('v_users_profile');
    $this->template->content->user_name = $user_name;
    //$this->template->content->color = 'linen';

    //$q = "select user_name from users where first_name = '$user_name'";
    //$this->template->content->email = $q;
    
    /* Load client files */
    $this->template->client_files_body = 
      Utils::load_client_files($client_files_body);
    
    /* DISPLAY */
    echo $this->template;
    
      if ($user_name == NULL) {
        echo "No user specified";
      } else {
        echo "This is the profile for " . $user_name;
      }
  }
  
  //public function cookie_monster()
  //{
    //setcookie('oatmeal', 'yummy', strtotime('+1 year'), '/');
    //setcookie('chocochip', 'mmm', strtotime('+1 year'), '/');
    //setcookie('raisin', 'awesome', strtotime('+1 year'), '/');
  //}

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
