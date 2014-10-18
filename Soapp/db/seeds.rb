# This file should contain all the record creation needed to seed the
# database with its default values. # The data can then be loaded with
# the rake db:seed (or created alongside the db with db:setup). # #
# Examples: # #   cities = City.create([{ name: 'Chicago' }, { name:
# 'Copenhagen' }]) # Mayor.create(name: 'Emanuel', city: cities.first)
# User(id: integer, uid: string, name: string, email: string, token:
# string, avatar_url: string, created_at: datetime, updated_at:
# datetime)

# Repo(id: integer, name: string, created_at: datetime,
# updated_at: datetime)

# Branch(id: integer, repo_id: integer, user_id: integer, name: string, created_at: datetime, updated_at: datetime)

# Commit(id: integer, branch_id: integer, message: string, sha: string,
# created_at: datetime, updated_at: datetime)

# FileChange(id: integer,
# commit_id: integer, file_path: text, action_taken: string, created_at:
# datetime, updated_at: datetime)


# User.create(uid: "7420686", name: "meow wallwork", email:
# "chr2is.wallwork@gmail.com")

# repo = Repo.create(name: "REPO NAME")
# com1 = Commit.create(message: "string", sha: "string") #branch_id: integer
# com1.file_changes.create(file_path: "Merp/merp/path", action_taken: "string of action taken" ) #commit_id: integer
# com1.branch.create(name: "THIs branch name") #repo_id: integer, user_id: integer,
# com1.update_attribute(user_id: 1)
# Branch.last.update_attribute(repo_id: 1)


