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
      Router::redirect('/posts');
      //echo "Your post has been added.";
      //echo "<a href='/posts/add'>Add another</a>";
    } else {
      
    }
    
    //echo Debug::dump($_POST);

  }

  public function index() 
  {
    // set up the head
    $this->template->title = 'Post for '. $this->user->user_name;
    $client_files_head = Array(
      '/css/main.css'
    );
    $this->template->client_files_head = 
      Utils::load_client_files($client_files_head);

    // set up the body
    $this->template->content = View::instance('v_posts_index');

    // build the query
    //$q = "
      //select p.content
      //from posts p inner join users u
        //on p.user_id = p.user_id
      //where p.user_id = " . $this->user->user_id;
    $q = "
      select p.content, u.user_name, p.created
      from posts p inner join users u
        on p.user_id = u.user_id
    ";

    $posts = DB::instance(DB_NAME)->select_rows($q, 'assoc');    

    //echo Debug::dump($this->user->user_id);
    //echo Debug::dump($posts);
    $this->template->content->posts = $posts;

    //render template
    echo $this->template;

  }


}
?>
