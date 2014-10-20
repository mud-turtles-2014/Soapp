$(document).ready(function(){

  Repo.getNewCommits();

  $('.new-repo a').click(function(e){
    e.preventDefault();
    View.toggle_new_btn();
  });

  // $('form').submit(function(e){
  //   e.preventDefault();
  //   $.post("/repos", $(this).serialize())
  //     .done(function(data){
  //       alert(data);
  //     });
  // });
});
