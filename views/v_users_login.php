<?php if (isset($new_user)):?>
<h2>Welcome to ArgyBargy</h2>
<?php endif; ?>

<h2>Please log in</h2>
<form action='/users/p_login' method='post'>
    Email <input type='text' name='email'><br>
    Password <input type='password' name='password'><br>
    <input type='submit' value='Log in'>
</form>
