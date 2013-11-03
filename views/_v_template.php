<!DOCTYPE html>
<html>
<head>
	<title><?php if(isset($title)) echo $title; ?></title>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />	
    <link href='http://fonts.googleapis.com/css?family=Ruda:400,700,900' rel='stylesheet' type='text/css'>

					
	<!-- Controller Specific JS/CSS -->
	<?php if(isset($client_files_head)) echo $client_files_head; ?>
	
</head>

<body>	
    <div class='container_12'>
    <div class='grid_8 prefix_4' id='menu'>
    <a href="/" title='Welcome to ArgyBargy'><img src='/images/argybargy-blue150.gif' alt='ArgyBargy logo'></a>
<!--       menu for logged-in users -->
      <?php if($user): ?>
        <a href='/users/logout'>Logout</a>
        <a href='/users/profile/<?php echo $user->user_name; ?>'>Profile</a>
<!--       menu for non-logged-in users -->
      <?php else: ?>
        <a href='/users/signup'>Sign up</a>
        <a href='/users/login'>Log in</a>
      <?php endif; ?>
      
    </div>
	<?php if(isset($content)) echo $content; ?>

	<?php if(isset($client_files_body)) echo $client_files_body; ?>
    </div>
</body>
</html>
