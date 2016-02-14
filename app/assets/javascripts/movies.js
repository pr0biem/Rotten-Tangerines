$(function() {
  $('.movie-description').hide()
  $('div.column.is-3').hover(function(){
    $(this).find('.movie-description').show()
  },
  function(){
    $(this).find('.movie-description').hide();
  });
});