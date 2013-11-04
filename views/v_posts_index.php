<div class='prefix_4 grid_4 suffix_4'>
  <img src='/images/argybargy300.gif' alt='ArgyBargy logo'>
</div>
<div class='prefix_2 grid_8 suffix_2'>
  <div class='display'>
    <?php //echo Debug::dump($posts); ?>
    <?php if (isset($posts)): ?>
      <?php foreach ($posts as $post): ?>
      <article>
        <h1><?=$post['user_name']?> said:</h1>
        <p><?=$post['content']?></p>
        <time datetime="<?=Time::Display($post['created'], 'Y-m-d G:i');?>">
          <small><?=Time::time_ago($post['created'])?></small>
        </time>
      </article>
      <?php endforeach; ?>
    <?php else: ?>
      <p>No posts to display.</p>
    <?php endif; ?>
  </div>
</div>
