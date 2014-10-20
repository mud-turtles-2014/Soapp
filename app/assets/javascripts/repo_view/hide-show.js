$(document).ready(function(){

  hideShowHover($(".git_img"), $(".time_hover"))

})
function hideShowHover(hoverThing, showItem){
  // $(showItem).hide();
  $(hoverThing).on('hover', function(){
    $(showItem).slideToggle("slow", function(){
    });
  });
}
