$(".repos.index").ready(function(){

  Repo.getNewCommits();

  $('.new-repo a').click(function(e){
    e.preventDefault();
    View.toggle_new_btn();
  });

  $('.btn-delete').on('ajax:success', function(data) {
    $(this).parent().remove();
  });
});

$(".commits").ready(function(){


});
