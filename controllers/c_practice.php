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
      echo Debug::dump($q);    
      echo Debug::dump(DB::instance(DB_NAME)->sanitize($q));    
        
//        echo DB::instance(DB_NAME)->select_field($_POST['first_name']);
            
//        $q_clean= DB::instance(DB_NAME)->sanitize($q);
//        echo '<br>';
//        print_r($q_clean);
//        echo $q;
//        DB::instance()->insert_row('users', $new_user);
        
//        echo '<pre>';
//        print_r(DB::instance(DB_NAME)->query_history());
//        echo '</pre>';
                        
    }

    public function test1()
    {
//        require(APP_PATH . '/libraries/Image.php');
        $imageObj = new Image('http://placehold.it/1000/1000');
        $imageObj->resize(200, 200);
        $imageObj->display();
    }
    
    public function test2()
    {
        echo Time::now();
    }

    /*
     * TODO VIEW ISN'T WORKING
     */
    public function test3()
    {
      $this->template->content = View::instance('v_practice_test3');
      $this->template->title = 'test3 - geolocate';
      $client_files_head = array('/css/main.css');
      $this->template->client_files_head = 
        Utils::load_client_files($client_files_head);
  
      echo Debug::dump(Geolocate::locate());
      $this->template->content->location = Geolocate::locate();
      $this->template->content->ip = Geolocate::ip_address();

      
      echo $this->template;
    }


}

?>
