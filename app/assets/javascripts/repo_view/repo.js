var Repo = {
  lastRequest : ""
}

Repo.getNewCommits = function(){
  $.ajax({
    type: "GET",
    url: '/repos',
    dataType: 'json'
  }).done(function(data){
    if (JSON.stringify(Repo.lastRequest) != JSON.stringify(data)){
      View.updateCards(data);
      Repo.lastRequest = data;
    }
    setTimeout(function() { Repo.getNewCommits(); }, 3000);
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
