<div class='prefix_4 grid_4 suffix_4'>
  <img src='/images/argybargy300.gif' alt='ArgyBargy logo'>
</div>
<div class='prefix_2 grid_8 suffix_2'>
  <div class='sign-up'>
  
  <?php if(isset($taken_name)): ?>
    <?php echo '<pre>'; var_dump($taken_name); echo '</pre>'; // debug ?>
    <?php echo '<pre>'; var_dump($_SESSION); echo '</pre>'; // debug
     ?>
    <h3>I'm sorry, <?=$taken_name;?> is already taken. Please choose another.</h3>
  <?php endif; ?>
    <h2>Sign up for ArgyBargy</h2>
    <form action='/users/p_signup' method='post'>
      User name<input type='text' name='user_name'><br>
      Email <input type='text' value='<?=$_SESSION['email'];?>' name='email'><br>
      Password <input type='password' name='password'><br>
      <input type='submit' value='Sign up'>
    </form>
  </div>
</div>
