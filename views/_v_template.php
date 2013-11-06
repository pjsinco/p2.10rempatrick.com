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
<!--   <a href="/users/index/<?=$user->user_name?>" title='Welcome to ArgyBargy'><img src='/images/argybargy-blue150.gif' alt='ArgyBargy logo'></a> -->
  <a href="/" title='Welcome to ArgyBargy'><img src='/images/argybargy-blue150.gif' alt='ArgyBargy logo'></a>
</div>
<!--        menu for logged-in users -->
<div class='prefix_3 grid_5'>
  <?php if($user): ?>
    <a href='/users/users'>People</a>
    <a href='/users/logout'>Logout</a>
    <a href='/users/index/<?=$user->user_name;?>'><?=$user->user_name?></a>
<!--        menu for non-logged-in users -->
  <?php else: ?>
    <a href='/users/signup'>Sign up</a>
    <a href='/users/login'>Log in</a>
  <?php endif; ?>
</div>

<?php if(isset($content)) echo $content; ?>

<?php if(isset($client_files_body)) echo $client_files_body; ?>
</div> <!-- end container_12 -->
</body>
</html>
