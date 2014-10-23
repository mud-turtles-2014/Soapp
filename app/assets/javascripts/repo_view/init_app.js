$(document).ready(function(){

  var intervalNewCommits;
  
  $(".all_repos").ready(function(){
    $('.add_button').click(function(e){
      e.preventDefault();
      View.toggle_new_btn();
    });
intervalNewCommits = setInterval(function() { Repo.getNewCommits() }, 3000);
    $('.btn-delete').on('ajax:success', function(data) {
      $(this).parent().remove();
    });
  });

  $(".commits").ready(function(){
    clearInterval(intervalNewCommits);
  });

});
