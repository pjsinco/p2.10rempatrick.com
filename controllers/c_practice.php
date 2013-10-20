<?php

/* another practice controller, like c_user.php */

class practice_controller extends base_controller
{
    public function __construct()
    {
        parent::__construct();
    }
  
    public function test_db() 
    {
//        $q = "
//            UPDATE users
//            SET email = 'albert@aol.com'
//            WHERE user_id = 3
//        ";
    
//        $new_user = Array(
//            'first_name' => 'Miguel',
//            'last_name' => 'Cabrera',
//            'email' => 'mcabrera@tigers.com'
//        );
        $q = "select email from users where first_name = 'Albert'";
        
//        echo DB::instance(DB_NAME)->select_field($_POST['first_name']);
            
//        $q_clean= DB::instance(DB_NAME)->sanitize($q);
        echo '<pre>';
        print_r($_GET);
//        echo '<br>';
//        print_r($q_clean);
        echo '</pre>';
//        echo $q;
//        DB::instance()->insert_row('users', $new_user);
        
//        echo '<pre>';
//        print_r(DB::instance(DB_NAME)->query_history());
//        echo '</pre>';
                        
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
