<div class='prefix_1 grid_10 suffix_1'>
  <div class='display'>
  
<!--   process any error messages -->
  <?php if (isset($error) && $error == 'email_exists'): ?>
    <div class='error'>That email is already taken. Please choose another.</div>
  <?php elseif (isset($error) && $error == 'blank_fields'): ?>
    <div class='error'>Sign-up failed&mdash;all fields are required. Please try again.</div>
  <?php elseif (isset($error) && $error == 'username_exists'): ?>
    <div class='error'>That user name is already taken. Please choose another.</div>
  <?php elseif (isset($error) && $error == 'error'): ?>
    <div class='error'>Sign-up failed. Please try again.</div>
  <?php endif; ?>
    <h2>Sign up for ArgyBargy</h2>
    <form action='/users/p_signup' method='post'>
      User name<input type='text' name='user_name'><br>
      Email <input type='text'  name='email'><br>
      Password <input type='password' name='password'><br>
      <input type='submit' value='Sign up'>
    </form>
  </div>
</div>
