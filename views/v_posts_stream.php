<div class='prefix_4 grid_4 suffix_4'></div>
<div class='grid_12 spacer'></div>
<div class='prefix_2 grid_8 suffix_2'>
  <div class='display'>
    <?=$add_post?>
  </div>
  <div class='display'>
    <h1>Stream for <?=$user->user_name?></h1>
    <?php if (isset($posts) && count($posts) > 0): ?>
      <?php foreach ($posts as $post): ?>
      <article>
        <h1><a href="/users/profile/<?=$post['user_name']?>"><?=$post['user_name']?></a> said:</h1>
        <p><?=$post['content']?></p>
        <time datetime="<?=Time::Display($post['created'], 'Y-m-d G:i', $user->timezone);?>">
          <small><?=Time::time_ago($post['created'])?></small>
        </time>
      </article>
      <?php endforeach; ?>
    <?php else: ?>
      <p>No posts to display. <a href='/users/users'>Follow some people</a.>.</p>
    <?php endif; ?>
  </div>
</div>
