    <?php if (isset($error)): ?>
      <div class='error'>Database error. Please try again</div>
    <?php endif; ?>
    <form action='/posts/p_add' method='POST' accept-charset='utf-8'>
      <fieldset>
        <legend>New post</legend>
        <p>
          <textarea class='post' name='content'></textarea>
        </p>
        <input type='submit' class='submit' value='Post'>
      <fieldset>
    </form>
