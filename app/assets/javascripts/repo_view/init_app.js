$(".repos.index").ready(function(){

  Repo.getNewCommits();

  $('.add_button').click(function(e){
    e.preventDefault();
    View.toggle_new_btn();
  });

  $('.btn-delete').on('ajax:success', function(data) {
    $(this).parent().remove();
  });
});

$(".commits").ready(function(){

});
