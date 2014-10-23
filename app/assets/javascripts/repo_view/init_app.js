$(document).ready(function(){


  $('.add_button').click(function(e){
      e.preventDefault();
      View.toggle_new_btn();
    });

  $('.btn-delete').on('ajax:success', function(data) {
      $(this).parent().remove();
  });

  var intervalNewCommits;
  intervalNewCommits = setInterval(function() { Repo.getNewCommits() }, 3000);


  $(".all_repos").ready(function(){

  });

  $(".commits").ready(function(){
    clearInterval(intervalNewCommits);
  });

});
