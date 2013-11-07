<div class='grid_12 spacer'></div>
<div class='prefix_2 grid_8 suffix_2'>
  <div class='display'>
    <?php if (isset($posts)): ?>
      <?php foreach ($posts as $post): ?>
      <article>
        <h3><a href="/users/index/<?=$post['user_name']?>"><?=$post['user_name']?></a> <span class="less-emph">said:</span></h3>
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
