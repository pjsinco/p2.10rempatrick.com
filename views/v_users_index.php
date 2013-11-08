<!-- <div class='prefix_4 grid_4 suffix_4'></div> -->
<div class='prefix_1 grid_6'>
  <?php if(!isset($peeker)): ?>
  <div class='display'>
    <?=$add_post?>
  </div>
  <?php endif; ?>
  <div class='display'>
    <?php if (isset($peeker) && $peeker == true): ?>
    <h1>Posted by <?=$user_name?></h1>
    <?php else: ?>
    <h1>Your stream</h1>
    <?php endif; ?>
    <?=$stream?>
  </div>
</div>
<div class='grid_4 suffix_1'>
  <div class='display'>
    <?php if (isset($peeker) && $peeker == true): ?>
<!--     a peeker is looking at a profile -->
    <h1 class='user_name'><?=$user_name?></h1>
    <p><span class='less-emph'>First name:</span> <strong><?=$first_name?></strong></p>
    <p>Last name: <strong><?=$last_name?></strong></p>
    <p>Location: <strong><?=$location?></strong></p>
    <p>Bio: <strong><?=$bio?></strong></p><br>
    <?php else: ?>
<!--     the user is checking his/her own profile -->
<!--     so include email and edit button -->
    <h1 class='user_name'><?=$user->user_name?></h1>
    <p>First name: <strong><?=$user->first_name?></strong></p>
    <p>Last name: <strong><?=$user->last_name?></strong></p>
    <p>Email: <strong><?=$user->email?></strong></p>
    <p>Location: <strong><?=$user->location?></strong></p>
    <p>Bio: <strong><?=$user->bio?></strong></p><br>
    <p><a class='edit' href='/users/edit_profile/<?=$user->user_name?>'>Edit profile</a></p>
    <?php endif; ?>
  </div>
    Following: <?=$following_count?>
    Followers: <?=$followers_count?>
    Posts: <?=$post_count?>
</div>

