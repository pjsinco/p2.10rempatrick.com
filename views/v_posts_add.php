<div class='prefix_4 grid_4 suffix_4'>
  <img src='/images/argybargy300.gif' alt='ArgyBargy logo'>
</div>
<div class='prefix_2 grid_8 suffix_2'>
  <div class='display'>
    <?php if (isset($error)): ?>
      <div class='error'>Database error. Please try again</div>
    <?php endif; ?>
    <form action="/posts/p_add" method="POST" accept-charset="utf-8">
      <label for='content'>New Post:</label><br>
      <textarea name="content" id='content' rows="8" cols="40"></textarea>
      <br><br>
      <input type="submit" value="New post">
    </form>
  </div>
</div>
