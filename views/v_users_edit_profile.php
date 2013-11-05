<div class='grid_12 spacer'></div>
<!-- <div class='prefix_4 grid_4 suffix_4'></div> -->
<div class='prefix_2 grid_8 suffix_2'>
  <div class='display'>
  
<h1>Edit your profile</h1>
<?php if (isset($error) && $error == 'email_exists'): ?>
  <div class='error'>That email is already taken.</div>
<?php elseif (isset($error) && $error == 'email_blank'): ?>
  <div class='error'>Please include an email address.</div>
<?php elseif (isset($error) && $error == 'error'): ?>
  <div class='error'>Edit failed. Please try again.</div>
<?php endif; ?>
<form action="/users/p_edit_profile" method="post" accept-charset="utf-8">
  First name<br>
  <input type="text" name="first_name" value="<?=$user->first_name?>"><br>
  Last name<br>
  <input type="text" name="last_name" value="<?=$user->last_name?>"><br>
  Email<br>
  <input type="text" name="email" value="<?=$user->email?>"><br>
<!--   Password<br><input type="text" name="email"><br> -->
  Location<br>
  <input type="text" name="location" value="<?=$user->location?>"><br>
<!--   Website<br> -->
<!--   <input type="text" name="website"><br> -->
<!--   Photo<br> -->
<!--   <input type="text" name="first_name"><br> -->
  Bio<br>
  <textarea name="bio" id= rows="8" cols="40"><?=$user->bio?></textarea><br>
 <br><input type='submit' value='Update'>
</form>
