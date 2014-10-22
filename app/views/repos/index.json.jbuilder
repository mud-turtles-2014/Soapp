json.my_card do
  json.commits @user.commits.order(:updated_at).last(6).reverse do |commit|
    json.message commit.message
    json.id commit.id
    json.repo_name commit.branch.repo.name
    json.updated_at form_time(commit.updated_at)
  end
end


json.card_repos @soapps_repos do |repo|

  json.name repo.name
  json.id repo.id

  json.commits repo.commits.order(:updated_at).last(6).reverse do |commit|
    json.id commit.id
    json.image commit.branch.user.avatar_url
    json.message commit.message
    json.updated_at form_time(commit.updated_at)
  end
end
