var Repo = {
  lastRequest : ""
}

Repo.getNewCommits = function(){
  console.log("calling server");
  $.ajax({
    type: "GET",
    url: '/repos',
    dataType: 'json'
  }).done(function(data){
    console.log("success");
    if (JSON.stringify(Repo.lastRequest) != JSON.stringify(data)){
      View.updateCards(data);
      Repo.lastRequest = data;
    }
  }).fail(function(data){
    console.log("fail");
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
