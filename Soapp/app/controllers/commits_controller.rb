class CommitsController < ApplicationController

before_action :get_commit, except: :create_commit

  def create_commit
    @branch = Branch.find_or_create_by(name: commit_params[:branch])
    @branch.commits << Commit.create(commit_params)

  end

  def get_commit
    @commit = Commit.find_by(sha: commit_params[:sha])
  end

  def show

  end

  private
  def commit_params
    params.require(:commit).permit(:sha,:email,:branch,:diff,:commit_msg)
    # params.require(:commit).permit(:message)
  end
#comment
end

