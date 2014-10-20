Repo = {
  lastRequest : ""
}

Repo.getNewCommits = function(){
  alert("get new commits");
  $.ajax({
    type: "GET",
    url: '/repos',
    dataType: 'json'
  }).done(function(data){
    View.updateCards(data);
    if (Repo.lastRequest != data){
      View.updateCards(data);
      Repo.lastRequest = data;
    }
    setTimeout(function() { Repo.getNewCommits(); }, 3000);
  });
}

