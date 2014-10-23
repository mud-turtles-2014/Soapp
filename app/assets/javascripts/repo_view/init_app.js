$(document).ready(function(){
  var intervalNewCommits;
  $(".repos.index").ready(function(){
    intervalNewCommits = setInterval(function() { Repo.getNewCommits() }, 3000);
    $('.add_button').click(function(e){
      e.preventDefault();
      View.toggle_new_btn();
    });

    $('.btn-delete').on('ajax:success', function(data) {
      $(this).parent().remove();
    });
  });
  $(".commits").ready(function(){
    clearInterval(intervalNewCommits);
  });

});
