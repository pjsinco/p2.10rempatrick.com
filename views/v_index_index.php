<div class='grid_12'>
  <h1>Welcome to</h1>
  <img class='center' src='/images/argybargy900.gif' alt='ArgyBargy logo'>
</div>
<div class='grid_12 spacer'></div>
<div class='grid_7 prefix_1'>
  <h2>Ruckus-raising and rabble-rousing since 2013</h2>
  <p>Ready to argle?</p>
</div>

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
