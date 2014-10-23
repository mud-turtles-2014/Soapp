'use strict';
var Repo = {
  lastRequest : ""
}

Repo.getNewCommits = function(){
  console.log("boop");
  $.ajax({
    type: "GET",
    url: '/repos/latest',
    dataType: 'json'
  }).done(function(data){
    if (JSON.stringify(Repo.lastRequest) != JSON.stringify(data)){
      View.updateCards(data);
      Repo.lastRequest = data;
    }

  }).fail(function(data){
    console.log("update failed");
  });
};

Repo.deleteCard = function(id){
  $.ajax({
    type: "POST",
    url: '/repos',
    dataType: 'json'
  }).done(function(data){
    View.deleteCard(id);
  });
};
