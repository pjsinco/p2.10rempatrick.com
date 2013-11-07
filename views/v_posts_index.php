<div class='grid_12 spacer'></div>
<div class='prefix_1 grid_6'>
  <div class='display'>
    <h1>Recently on ArgyBargy</h1>
    <?php if (isset($posts)): ?>
      <?php foreach ($posts as $post): ?>
      <article>
        <h3><a href="/users/index/<?=$post['user_name']?>"><?=$post['user_name']?></a></h3>
        <p><?=$post['content']?></p>
        <time datetime="<?=Time::Display($post['created'], 'Y-m-d G:i', $user->timezone);?>">
          <small><?=Time::time_ago($post['created'])?></small>
        </time>
      </article>
      <?php endforeach; ?>
    <?php else: ?>
      <p>No posts to display.</p>
    <?php endif; ?>
  </div>
</div>
<div class='grid_4 suffix_1'>
  <div class='display'>
    <?=$profile?>
  </div>
</div>
