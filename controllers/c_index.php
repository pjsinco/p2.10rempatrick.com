<?php

class index_controller extends base_controller 
{
  /*-------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------*/
  public function __construct() 
  {
    parent::__construct();
  } 
  	
  /*-------------------------------------------------------------------------------------------------
  Accessed via http://localhost/index/index/
  -------------------------------------------------------------------------------------------------*/
  public function index() 
  {
  	
    # Any method that loads a view will commonly start with this
    # First, set the content of the template with a view file
    $this->template->content = View::instance('v_index_index');
        
    # Now set the <title> tag
    $this->template->title = "Welcome to " . APP_NAME;

    // if the user is logged in, instead route to user's home page
    if ($this->user) {
      Router::redirect('/users/index/' . $this->user->user_name);
    }
  
    # Render the view
    echo $this->template;
  
  } # End of method
  
} # End of class
