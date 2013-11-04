<div class='prefix_4 grid_4 suffix_4'>
  <img src='/images/argybargy300.gif' alt='ArgyBargy logo'>
</div>
<div class='prefix_2 grid_8 suffix_2'>
  <div class='display'>
    <h1>Profile for <?=$user->user_name?></h1>
    <p>First name: <strong><?=$user->first_name?></strong></p>
    <p>Last name: <strong><?=$user->last_name?></strong></p>
    <p>Email: <strong><?=$user->email?></strong></p>
    <p>Location: <strong><?=$user->location?></strong></p>
    <p>Bio: <strong><?=$user->bio?></strong></p>
    <p><a class='btn' href='/users/edit_profile/<?=$user->user_name?>'>Edit profile</a></p>
  </div>
</div>
