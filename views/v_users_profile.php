<div class='prefix_4 grid_4 suffix_4'>
  <img src='/images/argybargy300.gif' alt='ArgyBargy logo'>
</div>

<div class='prefix_2 grid_8 suffix_2'>
  <div class='sign-in'>
    <?php // TODO what var to check in isset? ?>
    <?php if (isset($email)): ?>
    <h1><?=$first_name?></h1>
    <h1><?=$last_name?></h1>
    <h1><?=$email?></h1>
    <?php echo '<pre>'; var_dump($email); echo '</pre>'; // debug
    ?>
    <?php endif; ?>
  </div>
</div>

<?php if (isset($user_name)): ?>
  <h1>This is the profile for <?=$user_name?></h1>
<?php else: ?>
  <h1>No user has been set</h1>
<?php endif; ?>

<!-- <h4 style="background-color: <? //=$color?>">Here's some color</h4> -->
