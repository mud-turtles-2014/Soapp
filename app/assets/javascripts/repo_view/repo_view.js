$(document).ready(function(){
  var showOrHide = true;
  $('.new-repo a').click(function(e){
    e.preventDefault();
    $('.display-repos').toggle('slow', function(){
      if ( showOrHide === true ) {
        $(this).show();
        showOrHide = false;
      } else if ( showOrHide === false ) {
        $(this).hide();
        showOrHide = true;
      }
    });
  });
});
