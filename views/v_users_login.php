<?php //if(isset($new_user)):?>
<!-- <h2>Welcome to ArgyBargy</h2> -->

<?php echo '<pre>newuser'; var_dump(isset($new_user)); echo '</pre>'; ?>
<?php echo '<pre>loginfail'; var_dump(isset($error)); echo '</pre>'; ?>

<h2>Please log in</h2>
<form action='/users/p_login' method='post'>
  User name <input type='text' name='user_name'><br>
  Password <input type='password' name='password'><br>
  <?php if(isset($error) && $error == 'error'): ?>
  <div class='error'>
    Log-in failed. Please double-check your user name and password.
  </div>
  <br>
  <?php endif; ?>
  <input type='submit' value='Log in'>
</form>
