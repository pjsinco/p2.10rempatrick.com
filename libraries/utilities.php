<?php  

class Utilities
{
  /*-----------------------------------------------------------------
  Gets array of user's connections
  Param:
    $user_id string
  Returns:
    array of user's connections
  -----------------------------------------------------------------*/
  public static function get_connections($user_id)
  {
    // figure out connections user has
    // iow, who are they following?
    $q = "
      SELECT *
      FROM users_users
      WHERE user_id = " . $user_id;

    // get array of all people user is following
    return DB::instance(DB_NAME)->select_array($q, 'user_id_followed');
  }

  /*-----------------------------------------------------------------
  Gets counts of posts, followers and followings for user
  Param:
    $user_id string
  Returns:
    associative array of counts:
    (
      'post_count' => ..., 
      'followers_count' => ..., 
      'following_count' => ...
    )
  -----------------------------------------------------------------*/
  public static function get_counts($user_id) 
  {
    // get count of posts
    $q = "
      SELECT count(*)
      FROM posts
      WHERE user_id = " . $user_id;
    $post_count = DB::instance(DB_NAME)->select_field($q);

    // get count of followers
    $q = "
      SELECT count(*)
      FROM users_users
      WHERE user_id_followed = " . $user_id;
    $followers_count = DB::instance(DB_NAME)->select_field($q);

    // get count of followings
    $q = "
      SELECT count(*)
      FROM users_users
      WHERE user_id = " . $user_id;
    $following_count = DB::instance(DB_NAME)->select_field($q);

    return array(
      'post_count' => $post_count,
      'followers_count' => $followers_count,
      'following_count' => $following_count
    );
    
  }
  
  /*------------------------------------------
    Checks to see if a user_name exists
    Params: 
      $user_name String
    Returns: boolean
  /*------------------------------------------*/
  public static function username_exists($user_name)
  {
    $q = "
      SELECT user_name
      FROM users
      WHERE user_name = '" . $user_name . "'
    ";

    $result = DB::instance(DB_NAME)->select_field($q);
    return ($result == null ? False : True);
  }

  /*-----------------------------------------------------------------
  Gets list of all users
  Param:
    $user_id string
  Returns:
    array of all user names and id's, excluding the user whose
    id is passed in
  -----------------------------------------------------------------*/
  public static function get_users($user_id)
  {
    // get list of all users
    // build query; be sure to not include $this->user
    $q = "
      select user_name, user_id
      from users
      where user_id != " . $user_id;

    return DB::instance(DB_NAME)->select_rows($q, 'assoc');
  }

  /*-----------------------------------------------------------------
  Gets user_id for passed-in user_name
  Param:
    $user_name string
  Returns:
    the user_id of the user whose user_name was passed in
  -----------------------------------------------------------------*/
  public static function get_user_id($user_name)
  {
    $q = "
      SELECT user_id
      FROM users
      WHERE user_name = '" . $user_name . "'
    ";
  return DB::instance(DB_NAME)->select_field($q);
  }
}
?>
