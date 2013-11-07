<div class='grid_12 spacer'></div>
  <div class='display'>
    <?php if (isset($posts) && count($posts) > 0): ?>
      <?php foreach ($posts as $post): ?>
    <article>
      <h3><a href="/users/index/<?=$post['user_name']?>"><?=$post['user_name']?></a> <!--<span class='less-emph'>said:</span>--></h3>
      <p><?=$post['content']?></p>
      <time datetime="<?=Time::Display($post['created'], 'Y-m-d G:i', $user->timezone);?>">
        <p class='meta'><?=Time::time_ago($post['created'])?></p>
      </time>
    </article>
      <?php endforeach; ?>
      <?php else: ?>
    <article>
        <p>No posts to display. 
        <?php if ($user_name == $user->user_name): ?>
          <a href='/users/users'>Follow some people</a>.
        <?php endif; ?>
        </p>
    </article>
    <?php endif; ?>
  </div>
<!-- </div> -->
