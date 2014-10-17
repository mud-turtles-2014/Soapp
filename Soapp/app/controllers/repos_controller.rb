class ReposController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    @github = Github.new  oauth_token: @user.token

    @repos = @github.repos.list
  end

  def new
  	@repo =Repo.new
  end

  def create
  	@repo = Repo.new(repo_params)
  	if @repo.save
  		redirect_to repo_path(@repo)
  	else
  		redirect_to new_repo_path
  	end
  end

  def boop
  end


private
  def repo_params
    params.require(:repo).permit( [:name])
  end

end
