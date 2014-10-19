$(document).ready(function(){

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

View = {
  btn_show_new: true,
  $btn_new: $('.new-repo a')
}

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
}

View.makeCardRepo = function(){

}


