  <div class='display'>
    <?php if (isset($posts) && count($posts) > 0): ?>
      <?php foreach ($posts as $post): ?>
    <article>
      <h3><a href="/users/index/<?=$post['user_name']?>"><?=$post['user_name']?></a></h3>
      <p class='content'><?=$post['content']?></p>
      <time class='meta' datetime="<?=Time::Display($post['created'], 'Y-m-d G:i', $user->timezone);?>">
        <?=Time::time_ago($post['created'])?>
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
