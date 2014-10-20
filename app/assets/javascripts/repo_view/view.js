View = {
  btn_show_new: true,
  $btn_new: $('.new-repo a')
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
  View.updateMyCardRepo();
};

View.makeCardRepo = function(){
};

View.updateCardRepo = function(data){
};

View.updateMyCardRepo = function(data){
  $('#my_card ul').empty();
};
