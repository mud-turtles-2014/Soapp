class CommitsController < ApplicationController

before_action :get_commit, except: :create

  def create
    commit_hash = JSON.parse(params.body)
    Commit.create(commit_hash)
  end

  def get_commit
    @commit = Commit.find_by(sha: sha)
  end

  def show

  end

#comment
end
