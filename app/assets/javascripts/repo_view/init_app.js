$(".repos.index").ready(function(){

  Repo.getNewCommits();

  $('.new-repo a').click(function(e){
    e.preventDefault();
    View.toggle_new_btn();
  });

  $('.btn-delete').on('ajax:sucess', function(data) {
    console.log('ajax:success!');
    console.log(data);
  });
});

$(".commits").ready(function(){


});
