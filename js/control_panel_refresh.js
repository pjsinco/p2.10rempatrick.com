$('#refresh-button').click(function() {
  $.ajax(
    {
      type: 'POST',
      url: '/control_panel/refresh',
      success: function(response) {
        var data = $.parseJSON(response);
        $('#post-count').html(data.post_count); 
        $('#user-count').html(data.user_count); 
        $('#most-recent').html(data.most_recent); 
      }
    }
  );
});
