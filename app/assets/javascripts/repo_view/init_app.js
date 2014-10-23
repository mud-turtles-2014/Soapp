$(document).ready(function(){
<<<<<<< HEAD
    $('.add_button').click(function(e){
=======


  $('.add_button').click(function(e){
>>>>>>> 270ad4fbe3392dac148bd1836bcda3affd2bc98b
      e.preventDefault();
      View.toggle_new_btn();
    });

<<<<<<< HEAD
  var intervalNewCommits;
  intervalNewCommits = setInterval(function() { Repo.getNewCommits() }, 3000);
  $(".all_repos").ready(function(){

    $('.btn-delete').on('ajax:success', function(data) {
=======
  $('.btn-delete').on('ajax:success', function(data) {
>>>>>>> 270ad4fbe3392dac148bd1836bcda3affd2bc98b
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
