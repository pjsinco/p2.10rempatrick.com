<?php

/* another practice controller, like c_user.php */

class practice_controller extends base_controller
{
  public function __construct()
  {
    parent::__construct();
    echo 'practice_controller just instantiated';
  }

  public function test1()
  {
    require(APP_PATH . '/libraries/Image.php');
    echo 'you are looking at test1';
    $imageOjb = new Image('/Users/pj/Desktop/miguel.jpg');
    print_r($imageObj);
  }


}

?>
