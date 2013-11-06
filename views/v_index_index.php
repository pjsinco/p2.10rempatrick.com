  <div class='clearfix'></div>
  <div class='prefix_1 grid_7'>
    <h1>Welcome to</h1>
    <img class='center' src='/images/argybargy600.gif' alt='ArgyBargy logo'>
  </div>
  <?php if ($user): ?>
  
  <?php else: ?>
  
  <?php endif; ?>
  <div class='grid_3 suffix_1'>
    <?php if (!$user): ?>
    <div class='display'>
      <h2>Log in</h2>
      <form action='/users/p_login' method='post'>
          Email <input type='text' name='email'><br>
          Password <input type='password' name='password'><br>
          <input type='submit' value='Log in'>
      </form>
    </div>
    <div class='display'>
      <h2>New user?</h2>
      <p><a class='btn' href='/users/signup'>Sign up!</a></p>
    </div>
    <?php endif; ?>
  </div>
