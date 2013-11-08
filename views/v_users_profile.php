    <?php if (isset($peeker) && $peeker == true): ?>
<!--     a peeker is looking at a profile -->
    <h1 class='user_name'><?=$user_name?></h1>
    <p>First name: <strong><?=$first_name?></strong></p>
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
  <div class='sub-sidebar'>
    <div class='sub-sidebar1'>Following <br><span class='count'><?=$following_count?></span></div>
    <div class='sub-sidebar2'>Followers <br><span class='count'><?=$followers_count?></span></div>
    <div class='sub-sidebar3'>Posts <br><span class='count'><?=$post_count?></span></div>
  </div>
</div>
