    <?php if (isset($error)): ?>
      <div class='error'>Database error. Please try again</div>
    <?php endif; ?>
    <form action='/posts/p_add' method='POST' accept-charset='utf-8'>
      <label for='content'><strong>New Post</strong></label><br>
      <textarea name='content' id='content' rows='3' cols='50'></textarea>
      <br><br>
      <input type='submit' value='post'>
    </form>
