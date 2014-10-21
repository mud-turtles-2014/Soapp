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
};

View.makeCardRepo = function(){
};

View.updateCardRepo = function(data){
};

View.updateMyCardRepo = function(data){
  var $my_card_ul = $('#my_card ul');
  $my_card_ul.empty();

  data.my_card.commits.forEach(function(commit){
    $my_card_ul.prepend(View.createLiTag(commit.message, commit.repo_name, commit.updated_at, commit.id));
  });
};

View.createLiTag = function(message, repo_name, updated_at, id){
  return "<li><a href='/commits/" + id + "'> "+ message +" </a><p>" + repo_name + "</p><p>" + updated_at +"</p></li>";
};




