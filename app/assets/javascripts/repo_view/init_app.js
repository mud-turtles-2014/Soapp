$(".repos.index").ready(function(){

  Repo.getNewCommits();

  $('.new-repo a').click(function(e){
    e.preventDefault();
    View.toggle_new_btn();
  });
});

$(".commits").ready(function(){


});
