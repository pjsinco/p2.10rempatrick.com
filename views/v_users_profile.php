<div class='prefix_4 grid_4 suffix_4'>
  <img src='/images/argybargy300.gif' alt='ArgyBargy logo'>
</div>
<div class='prefix_2 grid_8 suffix_2'>
  <div class='display'>
    <?php if (isset($peeker) && $peeker == true): ?>
<!--     a peeker is looking at a profile -->
    <h1>Profile for <?=$user_name?></h1>
    <p>First name: <strong><?=$first_name?></strong></p>
    <p>Last name: <strong><?=$last_name?></strong></p>
    <p>Location: <strong><?=$location?></strong></p>
    <p>Bio: <strong><?=$bio?></strong></p>
    <?php else: ?>
<!--     the user is checking his/her own profile -->
<!--     so include email and edit button -->
    <h1>Profile for <?=$user->user_name?></h1>
    <p>First name: <strong><?=$user->first_name?></strong></p>
    <p>Last name: <strong><?=$user->last_name?></strong></p>
    <p>Email: <strong><?=$user->email?></strong></p>
    <p>Location: <strong><?=$user->location?></strong></p>
    <p>Bio: <strong><?=$user->bio?></strong></p>
    <p><a class='btn' href='/users/edit_profile/<?=$user->user_name?>'>Edit profile</a></p>
    <?php endif; ?>
  </div>
</div>
