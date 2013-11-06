<div class='grid_12 spacer'></div>
<div class='prefix_1 grid_10 suffix_1'>
  <div class='display'>
  
<?php if (isset($error) && $error == 'email_exists'): ?>
  <div class='error'>That email is already taken.</div>
<?php elseif (isset($error) && $error == 'email_blank'): ?>
  <div class='error'>Please include an email address.</div>
<?php elseif (isset($error) && $error == 'error'): ?>
  <div class='error'>Edit failed. Please try again.</div>
<?php endif; ?>
<form action="/users/p_edit_profile" method="post" accept-charset="utf-8">
  <fieldset>
    <legend>Edit your profile</legend>
      <p>
        <label class='title' for='first_name'>First name</label>
        <input class='inside' type="text" name="first_name" value="<?=$user->first_name?>"><br>

        <label class='title' for="last_name">Last name</label>
        <input class='inside' type="text" name="last_name" value="<?=$user->last_name?>"><br>

        <label class='title' for='email'>Email</label>
        <input class='inside' type="text" name="email" value="<?=$user->email?>"><br>

        <label class='title' for='location'>Location</label>
        <input class='inside' type="text" name="location" value="<?=$user->location?>"><br>
        
        <label class='title' for='bio'>Bio</label>
        <textarea class='bio' name='bio'><?=$user->bio?></textarea>
      </p>
     <input type='submit' class='submit' value='Update'>
  <fieldset>
</form>
