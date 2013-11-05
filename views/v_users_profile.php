<div class='grid_12 spacer'></div>
<!-- <div class='prefix_4 grid_4 suffix_4'></div> -->
<div class='prefix_1 grid_6'>
  <div class='display'>
    <p> hello there hello there</p>
  </div>
</div>
<div class='grid_4 suffix_1'>
  <div class='display'>

    <?php if (isset($peeker) && $peeker == true): ?>
<!--     a peeker is looking at a profile -->
    <h1><?=$user_name?></h1>
    <p>First name: <strong><?=$first_name?></strong></p>
    <p>Last name: <strong><?=$last_name?></strong></p>
    <p>Location: <strong><?=$location?></strong></p>
    <p>Bio: <strong><?=$bio?></strong></p><br>
    <?php else: ?>
<!--     the user is checking his/her own profile -->
<!--     so include email and edit button -->
    <h1><?=$user->user_name?></h1>
    <p>First name: <strong><?=$user->first_name?></strong></p>
    <p>Last name: <strong><?=$user->last_name?></strong></p>
    <p>Email: <strong><?=$user->email?></strong></p>
    <p>Location: <strong><?=$user->location?></strong></p>
    <p>Bio: <strong><?=$user->bio?></strong></p><br>
    <p><a class='btn' href='/users/edit_profile/<?=$user->user_name?>'>Edit profile</a></p>
    <?php endif; ?>
  </div>
<div class='prefix 8 grid_4'>
  <div class="display">
    Following: <?=$following_count?>
    Followers: <?=$followers_count?>
    Posts: <?=$post_count?>
  </div>
</div>
</div>
