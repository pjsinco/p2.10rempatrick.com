<?php

/* another practice controller, like c_user.php */

class practice_controller extends base_controller
{
    public function __construct()
    {
        parent::__construct();
        echo 'practice_controller just instantiated';
    }
  
    public function test_db() 
    {
        
    }

    public function test1()
    {
        require(APP_PATH . '/libraries/Image.php');
        echo 'you are looking at test1';
        $imageObj = new Image('http://placekitten.com/1000/1000');
        $imageObj->resize(200, 200);
        $imageObj->display();
    }
    
    public function test2()
    {
        echo Time::now();
    }


}

?>
