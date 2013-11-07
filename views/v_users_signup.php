<div class="grid_12 spacer"></div>
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
<!--     <h2>Sign up for ArgyBargy</h2> -->
    <form action='/users/p_signup' method='post'>
      <fieldset>
        <legend>Sign up for ArgyBargy</legend>
        <p>
          <label class='title' for='user_name'>User name</label>
          <input class='inside' type='text' name='user_name'><br>

          <label class='title' for='email'>Email</label>
          <input class='inside' type='text' name='email'><br>

          <label class='title' for='password'>Password</label>
          <input class='inside' type='password' name='password'></p>

          <input class='submit' type='submit' value='Sign up'>
      <fieldset>
    </form>
  </div>
</div>
