<?php
/* this is a practice controller copied from class website */

class users_controller extends base_controller 
{

  public function __construct() 
  {
    parent::__construct();
    echo "users_controller constructor just called<br><br>";
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

  // for fun
  public function global_server()
  {
    echo '<pre>';  
    print_r($_SERVER);
    echo '</pre>';  
  } 

  public function index() 
  {
    echo "This is the index page.";
  }

  public function signup()
  {
    echo "This is the signup page.";
  }

  public function login()
  {
    echo "This is the login page.";
  }

  public function logout()
  {
    echo "This is the logout page.";
  }

  public function profile($user_name = NULL)
  {
    if ($user_name == NULL) {
      echo "No user specified";
    } else {
      echo "This is the profile for " . $user_name;
    }
  }




}

?>
