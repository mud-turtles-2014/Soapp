namespace :use do

  desc "Create post-commit file in .git"
  task :commit_soapp do

   Dir.chdir ".git/hooks"
   File.open('post-commit', 'w+') do |f|
     f.write("#!/usr/bin/env ruby
              require 'net/http'
              require 'json'
              full_diff =`git diff HEAD^ HEAD`
              email = `git log -n 1 --format='%ae'`
              email.chop!
              diff = `git diff --name-status HEAD~1..HEAD`
              branch = `git branch | sed -n '/\* /s///p'`
              message = `git log -1 --pretty=%B`
              2.times{message.chop!}
              sha = `git log -1 --format='%H'`
              sha.chop!
              repo = `git config --get remote.origin.url`
              repo = repo.chop
              branch = branch.chop!
              uri = URI('http://state-of-the-app.herokuapp.com/create_commit')
              http = Net::HTTP.new(uri.host, uri.port)
              req = Net::HTTP::Post.new(uri.path, initheader = {'Content-Type' =>'application/json'})
              req.body = {commit:{sha: sha, email: email, repo: repo, diff: diff, message: message, full_diff: full_diff
                }, branch:{ name: branch}}.to_json
              res = http.request(req)
              puts res

              exit(1)
          ")

      Dir.chdir "../../"
    end
  end

  desc "Implement soapp on current repo"
  task :start do
     `chmod +x .git/hooks/post-commit`
  end


  desc "Initiate Soapp"
  task :soapp => [:commit_soapp, :start]
end
