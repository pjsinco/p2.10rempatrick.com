<div class='prefix_4 grid_4 suffix_4'>
  <img src='/images/argybargy300.gif' alt='ArgyBargy logo'>
</div>
<div class='prefix_2 grid_8 suffix_2'>
  <div class='display'>
    <?php if (isset($users)): ?>
      <?php foreach($users as $user): ?>
        <p><a href='/users/profile/<?=$user['user_name']?>'><?=$user['user_name']?></a></p>
      <?php endforeach; ?>
    <?php else: ?>
      <p>There are no other users</p>
    <?php endif; ?>
  </div>
</div>
