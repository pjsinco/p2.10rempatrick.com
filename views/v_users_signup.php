<div class='prefix_4 grid_4 suffix_4'>
  <img src='/images/argybargy300.gif' alt='ArgyBargy logo'>
</div>
<div class='prefix_2 grid_8 suffix_2'>
  <div class='display'>
  
<!--   process any error messages -->
  <?php if (isset($error) && $error == 'email-exists'): ?>
    <div class='error'>That email is already taken. Please choose another.</div>
  <?php elseif (isset($error) && $error == 'blank-fields'): ?>
    <div class='error'>Sign-up failed&mdash;all fields are required. Please try again.</div>
  <?php elseif (isset($error) && $error == 'username-exists'): ?>
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
