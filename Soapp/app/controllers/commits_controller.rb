class CommitsController < ApplicationController

before_action :get_commit, except: :make_commit

  def make_commit
    p '*'*100
    # p commit_params
    Commit.create(commit_params)
  end

  def get_commit
    @commit = Commit.find_by(sha: sha)
  end

  def show

  end

  private
  def commit_params
    # params.require(:commit).permit(:sha,:author,:branch,:diff,:commit_msg)
    params.require(:commit).permit(:message)
  end
#comment
end
