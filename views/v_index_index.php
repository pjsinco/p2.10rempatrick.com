  <div class='clearfix'></div>
  <div class='prefix_1 grid_7'>
<!--     <h1>Welcome to</h1> -->
    <img class='center' src='/images/welcome2.gif' width="500px" alt='ArgyBargy logo'>
  </div>
  <?php if ($user): ?>
  
  <?php else: ?>
  
  <?php endif; ?>
  <div class='grid_3 suffix_1'>
    <?php if (!$user): ?>
    <div class='display'>
      <form action='/users/p_login' method='post'>
        <fieldset>
          <legend>Log in</legend>
            <p>
              <label class='title' for='email'>Email</label>
              <input type='text' name='email'><br>
              <label class='title' for='password'>Password</label>
              <input type='password' name='password'><br>
            <p>
            <input class='submit' type='submit' value='Log in'>
        </fieldset>
      </form>
    </div>
    <div class='display'>
      <form>
        <fieldset>
          <legend>New user?</legend>    
          <p>
            <a class='btn' href='/users/signup'>Sign up!</a>
          </p>
        </fieldset>
      </form>
    </div>
    <?php endif; ?>
  </div>
