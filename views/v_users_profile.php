<?php if (isset($user_name)): ?>
  <h1>This is the profile for <?=$user_name?></h1>
<?php else: ?>
  <h1>No user has been set</h1>
<?php endif; ?>

<h4 style="background-color: <?=$color?>">Here's some color</h4>
