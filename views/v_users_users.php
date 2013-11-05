<div class='prefix_4 grid_4 suffix_4'>
  <img src='/images/argybargy300.gif' alt='ArgyBargy logo'>
</div>
<div class='prefix_2 grid_8 suffix_2'>
  <div class='display'>
    <?php if (isset($users)): ?>
      <h1>Browse people</h1>
      <?php foreach($users as $user): ?>
        <p>
<!--         link to user's profile -->
          <a href='/users/profile/<?=$user['user_name']?>'><?=$user['user_name']?></a>&nbsp;
<!--         if there's a connection, show unfollow link -->
          <?php //echo Debug::dump(isset($connections[$user['user_id']])); ?>
          <?php if (isset($connections[$user['user_id']])): ?>
          <a href='/posts/unfollow/<?=$user['user_id']?>'>
            Unfollow
          <?php else: ?>
          <a href='/posts/follow/<?=$user['user_id']?>'>
            Follow
          <?php endif; ?>
          </a>
        </p>
      <?php endforeach; ?>
    <?php else: ?>
      <p>There are no other users</p>
    <?php endif; ?>
  </div>
</div>
