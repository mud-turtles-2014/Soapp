json.user do
  json.commits @user.commits.last(6) do |commit|
     json.message commit.message
     json.id commit.id
     json.repo_name commit.branch.repo.name
     json.updated_at commit.updated_at
   end
end


json.repos @soapps_repos do |repo|
   json.name repo.name
   json.id repo.id

   json.commits repo.commits.last(6) do |commit|
     json.image commit.branch.user.avatar_url
     json.message commit.message
   end
end
