<!DOCTYPE html>
<html>
<head>
  <title><?php if(isset($title)) echo $title; ?></title>
  
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />	
  <link rel='stylesheet' type='text/css' href='/css/main.css'>
  				
  <!-- Controller Specific JS/CSS -->
  <?php if(isset($client_files_head)) echo $client_files_head; ?>
	
</head>

<body>	
<div class='container_12'>
<div class='prefix_1 grid_3' id='menu'>
  <a href="/" title='Welcome to ArgyBargy'><img src='/images/argybargy150.gif' alt='ArgyBargy logo'></a>
</div>
<!--        menu for logged-in users -->
<nav class='prefix_3 grid_5'>
  <ul>
  <?php if($user): ?>
    <li><a href='/users/index/<?=$user->user_name;?>'>
      <strong><?=$user->user_name?></strong></a></li>
    <li><a href='/users/logout'>Logout</a></li>
    <li><a href='/users/users'>People</a></li>
<!--        menu for non-logged-in users -->
  <?php else: ?>
<!--     <a href='/users/signup'>Sign up</a> -->
<!--     <a href='/users/login'>Log in</a> -->
  <?php endif; ?>
  </ul>
</nav>

<?php if(isset($content)) echo $content; ?>

<?php if(isset($client_files_body)) echo $client_files_body; ?>
</div> <!-- end container_12 -->
</body>
</html>
