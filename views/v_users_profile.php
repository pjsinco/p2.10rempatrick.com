<div class='prefix_4 grid_4 suffix_4'>
  <img src='/images/argybargy300.gif' alt='ArgyBargy logo'>
</div>
<div class='prefix_2 grid_8 suffix_2'>
  <div class='sign-up'>
  

  <?php if (isset($user_name)): ?>
    <h1><?=$user_name?>'s profile</h1>
  <?php else: ?>
    <h1>No user has been set</h1>
  <?php endif; ?>
    <div class='prefix_2 grid_8 suffix_2'>
      <div class='sign-in'>
        <?php // TODO what var to check in isset? ?>
        <?php if (isset($user_name)): ?>
        <h1><?=$user_name?></h1>
        <h1><?=$user->email?></h1>
        <h1><?=$user->bio?></h1>
        <h1><?=$user->location?></h1>
        <?php endif; ?>
      </div>
    </div>
  </div>
</div>
