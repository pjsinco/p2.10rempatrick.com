<!DOCTYPE html>
<html>
<head>
  <title><?php if(isset($title)) echo $title; ?></title>
  
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />	
  <link rel='stylesheet' type='text/css' href='/css/main.css'>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
  				
  <!-- Controller Specific JS/CSS -->
  <?php if(isset($client_files_head)) echo $client_files_head; ?>
	
</head>

<body>	
<div class='container_12'>
<div class='prefix_1 grid_3' id='menu'>
<?php if ($user): ?>
  <a href="/" title='<?=APP_NAME?> | Home'><img src='/images/argybargy150.gif' alt='ArgyBargy logo'></a>
<?php endif; ?>
</div>
<!--        menu for logged-in users -->
<nav class='prefix_3 grid_5'>
  <ul>
  <?php if($user): ?>
    <li><a href='/users/index/<?=$user->user_name;?>'>
      <strong><?=$user->user_name?></strong></a></li>
    <li><a href='/users/logout'>Logout</a></li>
    <li><a href='/users/users'>People</a></li>
  <?php endif; ?>
  </ul>
</nav>
<div class='grid_12 spacer'></div>

<?php if(isset($content)) echo $content; ?>

<?php if(isset($client_files_body)) echo $client_files_body; ?>
</div> <!-- end container_12 -->
</body>
</html>
