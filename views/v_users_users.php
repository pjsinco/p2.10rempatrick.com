<div class='prefix_1 grid_6'>
  <div class='display'>
    <?php if (isset($users)): ?>
    <h1>Browse people</h1>
    <ul class='people'>
      <?php foreach($users as $user): ?>
        <li>
<!--         link to user's profile -->
          <a href='/users/index/<?=$user['user_name']?>'><?=$user['user_name']?></a>&nbsp;
<!--         if there's a connection, show unfollow link -->
          <span class='action'>
          <?php if (isset($connections[$user['user_id']])): ?>
            <a class='unfollow' href='/posts/unfollow/<?=$user['user_id']?>'>
            Unfollow
          <?php else: ?>
            <a href='/posts/follow/<?=$user['user_id']?>'>
              <strong>Follow</strong>
          <?php endif; ?>
            </a>
          </span>
        </li>
      <?php endforeach; ?>
    <?php else: ?>
      <p>There are no other users</p>
    <?php endif; ?>
    </ul>
  </div><!-- end display -->
</div>
<!-- end prefix_1 grid_6 -->
<div class='grid_4 suffix_1'>
  <div class='display'>
    <?=$profile?>
  </div>
</div>
<!-- </div> -->
