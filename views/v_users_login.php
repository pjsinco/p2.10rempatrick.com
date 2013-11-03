<div class='prefix_4 grid_4 suffix_4'>
  <img src='/images/argybargy300.gif' alt='ArgyBargy logo'>
</div>
<div class='prefix_2 grid_8 suffix_2'>
  <div class='sign-up'>
    <?php if (isset($flag) && $flag == 'new-user'): ?>
    <h2>Welcome to ArgyBargy, <?=$user_name?></h2>
    <?php endif; ?>
    
    <!-- process any error messages -->
    <?php if (isset($flag) && $flag == 'blank-fields'): ?>
    <div class='error'>Log-in failed. All fields are required.</div>
    <?php elseif (isset($flag) && $flag == 'no-user'): ?>
    <div class='error'>Log-in failed. Please check your email and password.</div>
    <?php endif; ?>
    <h2>Please log in</h2>
    <form action='/users/p_login' method='post'>
      Email <input type='text' name='email'><br>
      Password <input type='password' name='password'><br>
      <?php if(isset($error) && $error == 'error'): ?>
      <div class='error'>
        Log-in failed. Please double-check your email and password.
      </div>
      <br>
      <?php endif; ?>
      <input type='submit' value='Log in'>
    </form>
  </div>
</div>
