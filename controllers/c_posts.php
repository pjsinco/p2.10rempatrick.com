<?php 
class posts_controller extends base_controller
{
  public function __construct() 
  {
    parent::__construct();

    // make sure user is logged in
    if (!$this->user) {
      die("Members only. <a href='/users/login'>Log in</a>");
    }
  }

  public function add($error = null) 
  {
    // set up the view
    $this->template->title = 'Add a post';
    $client_files_head = Array('/css/main.css');
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);

    // set up the body
    $this->template->content = View::instance('v_posts_add');

    // pass error to view
    $this->template->content->error = $error;

    // render template
    echo $this->template;
  }

  public function p_add() 
  {

    // associate the user with the post
    $_POST['user_id'] = $this->user->user_id;

    // timestamp the post
    $_POST['created'] = Time::now();
    $_POST['modified'] = Time::now();

    $rows = DB::instance(DB_NAME)->insert('posts', $_POST);

    if ($rows > 0) {
      Router::redirect('/users/index/' . $this->user->user_name);
      //echo "Your post has been added.";
      //echo "<a href='/posts/add'>Add another</a>";
    } else {
      
    }
    
    //echo Debug::dump($_POST);

  }

  public function index() 
  {
    // set up the head
    $this->template->title = APP_NAME . " | All posts";
    $client_files_head = Array('/css/main.css');
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);

    // set up the body
    $this->template->content = View::instance('v_posts_index');

    // get and pass user's counts to profile view
    $counts = Utilities::get_counts($this->user->user_id);
    $this->template->content->profile = View::instance('v_users_profile');
    $this->template->content->profile->following_count = 
      $counts['following_count'];
    $this->template->content->profile->followers_count = 
      $counts['followers_count'];
    $this->template->content->profile->post_count = 
      $counts['post_count'];
       

    $q = "
      SELECT p.content, u.user_name, p.created
      FROM posts p INNER JOIN users u
        ON p.user_id = u.user_id
      ORDER BY p.created DESC
    ";

    $posts = DB::instance(DB_NAME)->select_rows($q, 'assoc');    

    //echo Debug::dump($this->user->user_id);
    //echo Debug::dump($posts);
    $this->template->content->posts = $posts;

    //render template
    echo $this->template;
  }

  public function follow($user_id_to_follow)
  {
    // set up the info we'll be updating
    $data = Array(
      'created' => Time::now(),
      'user_id' => $this->user->user_id,
      'user_id_followed' => $user_id_to_follow
    );

    $result = DB::instance(DB_NAME)->insert('users_users', $data);
    if ($result) {
      Router::redirect('/users/users');
    } else {

    }
  }

  public function unfollow($user_id_to_unfollow)
  {
    // delete the connection
    $where_condition = "
      where user_id = " . $this->user->user_id . 
        " and user_id_followed = $user_id_to_unfollow
    ";

    DB::instance(DB_NAME)->delete('users_users', $where_condition);
    
    Router::redirect('/users/users');
  }

  public function stream()
  {
    $this->template->content = View::instance('v_posts_stream');

    //view within a view
    $this->template->content->add_post = View::instance('v_posts_add');

    $q = "
      SELECT 
        p.content, 
        p.created, 
        p.user_id as post_user_id,
        uu.user_id as follower_id,
        u.user_name
      FROM posts p INNER JOIN users_users uu
        ON p.user_id = uu.user_id_followed INNER JOIN users u
        ON p.user_id = u.user_id
      WHERE uu.user_id = '" . $this->user->user_id . "' 
        OR p.user_id = '" . $this->user->user_id ."' 
      ORDER BY p.created DESC
    ";
    $posts = DB::instance(DB_NAME)->select_rows($q);
    
    // pass data to view
    $this->template->content->posts = $posts;

    // render template
    echo $this->template;
  }

}
?>
