<div class='grid_12 spacer'></div>
  <div class='display'>
    <article>
    <?php if (isset($posts) && count($posts) > 0): ?>
      <?php foreach ($posts as $post): ?>
        <h1><a href="/users/profile/<?=$post['user_name']?>"><?=$post['user_name']?></a> said:</h1>
        <p><?=$post['content']?></p>
        <time datetime="<?=Time::Display($post['created'], 'Y-m-d G:i', $user->timezone);?>">
          <small><?=Time::time_ago($post['created'])?></small>
        </time>
      <?php endforeach; ?>
      <?php else: ?>
        <p>No posts to display. 
        <?php if ($user_name == $user->user_name): ?>
          <a href='/users/users'>Follow some people</a>.
        <?php endif; ?>
        </p>
    <?php endif; ?>
    </article>
  </div>
<!-- </div> -->
