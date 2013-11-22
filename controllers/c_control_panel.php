<?php  

class control_panel_controller extends base_controller {

  /*
   *simply loads a view with 3 outputs
   */
  public function index() {

    // set up view
    $this->template->content = View::instance('v_control_panel_index');
    $this->template->title = 'Control Panel';

    // add js files
    $client_files_body = Array(
      '/js/control_panel_refresh.js'
    );
    $this->template->client_files_body = 
      Utils::load_client_files($client_files_body);

    // render view
    echo $this->template;
  }

  /*
   *in charge of getting data for index()
   */
  public function refresh() {
    $data = Array();

    // get post count
    $q = "
      select count(content)
      from posts
      where user_id = " . $this->user->user_id
    ;
    $data['post_count'] = DB::instance(DB_NAME)->select_field($q);

    // get user count
    $q = "
      select count(user_id)
      from users
    ";
    $data['user_count'] = DB::instance(DB_NAME)->select_field($q);
     
    // get most recent post
    $q = "
      select p.modified
      from posts p
      where p.modified = (
        select max(modified)
        from posts
      )
    ";
    $data['most_recent'] = Time::display(
      DB::instance(DB_NAME)->select_field($q)
    );
    
    // send back json results to the js, formatted as json
    echo json_encode($data);
  }

} //eoc

?>
