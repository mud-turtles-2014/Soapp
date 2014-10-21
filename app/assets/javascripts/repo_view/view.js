'use strict';
var View = {
  btn_show_new : true,
  $btn_new : $('.new-repo a'),
};

View.toggle_new_btn = function(){
  $('.display-repos').toggle('slow', function(){
    if ( this.btn_show_new === true ) {
      this.$btn_new.show();
      this.btn_show_new = false;
    } else if ( this.btn_show_new === false ) {
      this.$btn_new.hide();
      this.btn_show_new = true;
    }
  });
};

View.updateCards = function(data){
  View.updateMyCardRepo(data);
  View.updateCardRepo(data);
};

// View.makeCardRepo = function(){
// };

View.updateCardRepo = function(data){

  data.card_repos.forEach(function(card){
    // debugger;
    var $card_ul = $('#'+ card.id + ' ul');
    $card_ul.empty();

    card.commits.forEach(function(commit){
      debugger;
      $card_ul.prepend(View.createReoiCardLiTag(commit.image, commit.message, commit.id, commit.updated_at));
    });
  });
};

View.createReoiCardLiTag = function(image, message, id, updated_at){
  return "<li><img class='git_img' src="+image+"><span><a href='/commits/"+id+"'>"+message+"</a></span><br><p class='time_hover'>"+updated_at+"</p></li>";
};

View.updateMyCardRepo = function(data){
  var $my_card_ul = $('#my_card ul');
  $my_card_ul.empty();

  data.my_card.commits.forEach(function(commit){
    $my_card_ul.prepend(View.createMyCardLiTag(commit.message, commit.repo_name, commit.updated_at, commit.id));
  });
};

View.createMyCardLiTag = function(message, repo_name, updated_at, id){
  return "<li><a href='/commits/" + id + "'> "+ message +" </a><p>" + repo_name + "</p><p>" + updated_at +"</p></li>";
};




