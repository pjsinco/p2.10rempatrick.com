<?php
/* this is a practice controller copied from class website */

class users_controller extends base_controller 
{

  public function __construct() 
  {
    parent::__construct();
    echo "users_controller constructor just called<br><br>";
  } 

  //debug
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
