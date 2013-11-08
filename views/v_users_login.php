<div class='prefix_1 grid_10 suffix_1'>
  <div class='display'>
    <?php if (isset($flag) && $flag == 'new-user'): ?>
    <h2>Welcome to ArgyBargy, <?=$user_name?></h2>
    <?php endif; ?>
    
    <!-- process any error messages -->
    <?php if (isset($flag) && $flag == 'blank-fields'): ?>
    <div class='error'>Log-in failed. All fields are required.</div>
    <?php elseif (isset($flag) && $flag == 'no-user'): ?>
    <div class='error'>Log-in failed. Please check your email and password.</div>
    <?php endif; ?>
<!--     <h2 class='header'>Please log in</h2> -->
    <form action='/users/p_login' method='post'>
      <fieldset>
        <legend>Please log in</legend>
        <p><label class='title' for='email'>Email</label>
          <input class='inside' type='text' name='email'><br>
          <label class='title' for='password'>Password</label>
          <input class='inside' type='password' name='password'></p>
        <?php if(isset($error) && $error == 'error'): ?>
        <div class='error'>
          Log-in failed. Please double-check your email and password.
        </div>
        <br>
        <?php endif; ?>
        <input type='submit' class='submit' value='Log in'>
    <fieldset>
    </form>
  </div>
</div>
