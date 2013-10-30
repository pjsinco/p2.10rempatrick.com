<h1>Edit your profile</h1>
<form action="/users/p_edit_profile" method="post" accept-charset="utf-8">
  First name<br>
  <input type="text" name="first_name" value="<?=$user->first_name;?>"><br>
  Last name<br>
  <input type="text" name="last_name" value="<?=$user->last_name;?>"><br>
  Email<br>
  <input type="text" name="email" value="<?=$user->email;?>"><br>
  Password<br>
  <input type="text" name="email"><br>
  Location<br>
  <input type="text" name="location"><br>
  Website<br>
  <input type="text" name="website"><br>
  Photo<br>
  <input type="text" name="first_name"><br>
  Bio<br>
  <textarea name="bio" id= rows="8" cols="40"></textarea><br>
</form>
