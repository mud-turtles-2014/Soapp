class CommitsController < ApplicationController

before_action :get_commit, except: :create_commit

  def create_commit
    @branch = Branch.find_or_create_by(name: branch_params[:name])
    @user = User.find_by(email: user_params[:email])
    @branch.commits.create(commit_params)
  end

  def get_commit
    @commit = Commit.find_by(sha: commit_params[:sha])

  end

  def show

  end

  private
  def commit_params
    params.require(:commit).permit(:sha,:message)
    # params.require(:commit).permit(:message)
  end

  def branch_params
    params.require(:branch).permit(:name)
  end

  def user_params
    params.require(:commit).permit(:email)
    # params.require(:commit).permit(:message)
  end
#comment
end

