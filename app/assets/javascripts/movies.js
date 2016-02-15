$(function() {
  $('div.column.is-3').hover(function(){
    $(this).find('.movie__description').show()
  },
  function(){
    $(this).find('.movie__description').hide();
  });
});