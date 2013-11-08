<div class="prefix_1 grid_6">
  <div class="display">
    <?php if (isset($users)): ?>
    <h1><?=$user_name?> follows</h1>
    <ul class='people'>
      <?php foreach ($users as $user): ?>
        <?php if (isset($connections[$user['user_id']])): ?> 
      <li>
          <a href='/users/index/<?=$user['user_name']?>'><?=$user['user_name']?></a>
        <?php endif; ?>
      <?php endforeach; ?>
    <?php endif; ?>
      </li>
    </ul>
  </div>
</div>
<div class='grid_4 suffix_1'>
  <div class='display'>
    <?=$profile?>
  </div>
</div>
