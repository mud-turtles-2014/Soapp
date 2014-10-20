Repo = {

}

Repo.getNewCommits = function(){
  $.ajax({
    url: '/index',
    dataType: 'json',
    error: function(xhr_data) {
      alert("couldn't process the data");
    },
    success: function(xhr_data) {
      console.log(xhr_data);
      if (xhr_data.status == 'pending') {
        View.createCommitCard(xhr_data)

        setTimeout(function() { getNewCommits(); }, 30000);
      } else {
        success(xhr_data);
      }
    },
    contentType: 'application/json'
  });
}

