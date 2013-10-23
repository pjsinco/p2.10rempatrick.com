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
  public function signup()
  {
    /********************************************************/
    /*          DON"T APPPEND .php          */
    /********************************************************/
    $this->template->content = View::instance('v_users_signup');

    $this->template->title = 'Sign up for ArgyBargy';
    $client_files_head = Array(
      '/css/master.css'
    );
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);
    
    
//    $this->template->client_files_body = 
//      Utils::load_client_files($client_files_body);
    
    echo $this->template;
  }
  
  public function p_signup()
  {
    //echo '<pre>';
    //print_r(time());
    //echo '</pre>';

    

    /*
     *we need to modify $_POST a little bit before
     *making the database call
     */
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
        //Utils::generate_random_string());
    //echo '<pre>';
    //print_r(TOKEN_SALT);
    //print_r($_POST['token']);
    //echo '<br>rand string: ';
    //print_r($rand_string);
    //echo '</pre>';

    // encrypt the password 
    //echo '<pre>';
    //print_r($_POST['password']);
    //print_r($_POST);
    //echo '</pre>';
    
    DB::instance(DB_NAME)->insert_row('users', $_POST);

    /* redirect user to login page */
    //NOTE: DON'T ECHO ANYTHING BEFORE CALLING REDIRECT
    Router::redirect('/users/login');
  }
  
  public function login()
  {
    $this->template->title = 'Log-in page';
    $this->template->content = View::instance('v_users_login');
    echo $this->template;
  }

  /*
   *We just need to check the token when verifying whether 
   *a user can log in
   */
  public function p_login()
  {
    $pw = sha1(PASSWORD_SALT . $_POST['password']);
//    echo '<pre>'; var_dump($_POST); echo '</pre>'; // debug

    $q = "
      SELECT token
      FROM users
      WHERE password = '$pw'
        AND email = '" . $_POST['email'] . "'";

    $token = DB::instance(DB_NAME)->select_field($q);
    //echo '<pre>'; var_dump($token); echo '</pre>'; // debug
  
    // Success
    if ($token) {
      // send to home page? send to dashboard?
      // say congrats and show a menu of where to go?
      
      // we need to set a cookie so next time user comes back
      // we don't have to go thru this process again
      // note: '/' says: let this cookie be accessible to
      //    every directory on my domain
      setcookie('token', $token, strtotime('+1 year'), '/');
      echo '<pre>'; var_dump($_COOKIE); echo '</pre>'; // debug


      // keep simple for now
      echo "You are logged in";
      
    // Fail
    } else {
      // display fail message with 'back' button to try again?
      // or send back ourselves with some error messages?

      // keep simple
      echo "Login failed";
    }


  }
  
  public function logout()
  {
    echo "This is the logout page.";
  }

  public function edit_profile()
  {
    $this->template->title= 'Edit profile';
    $client_files_head = Array('/css/master.css');

    /* Load client files */
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);
  
     
  }
  
  /*
   * TODO what param to pass into profile?
      email? 
      if we don't pass anything, how do we know who
      we're looking at?
   */
  public function profile($email = NULL)
  {
    /* SET UP THE VIEW */
    // note: we can say $this->template because
    // $this->template is already set up for us in
    // base_controller.
    // cool: add title on the fly!
    $this->template->title = 'Profile for ... ';
    
    /* Make array of all files to go into head of document */
    $client_files_head = Array(
      '/css/master.css'
    );
    //$client_files_body = Array('/js/sample-app.js');
    
    /* Load client files */
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);
    
    /* PASS DATA TO THE VIEW */
    $this->template->content = View::instance('v_users_profile');
    $this->template->content->user_name = $user_name;
    $this->template->content->color = 'linen';

    $q = "select email from users where first_name = '$user_name'";
    $this->template->content->email = $q;
    
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
  
  // for fun
  public function global_server()
  {
    echo '<pre>';  
    print_r($_SERVER);
    echo '</pre>';  
  } 
} // eoc
?>
