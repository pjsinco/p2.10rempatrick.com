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
    <?php // TODO what var to check in isset? ?>
    <?php if (isset($user_name)): ?>
    <form action='/users/p_edit_profile' method='post'>
      First name <input type='text' name='first_name' value='<?=$user->first_name?>'><br>
      Last name <input type='text' name='last_name' value='<?=$user->last_name?>'><br>
      Email <input type='text' name='email' value='<?=$user->email?>'><br>
      Bio <input type='text' name='bio' value='<?=$user->bio?>'><br>
      Location <input type='text' name='location' value='<?=$user->location?>'><br>
      <input type='submit' value='Edit profile'>
    <?php endif; ?>
      </div>
    </div>
  </div>
</div>
