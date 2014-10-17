class ReposController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    @github = Github.new  oauth_token: @user.token
    @repos = @github.repos.list

    # @soapps = Repo.all
    @soapps = @user.repos.all
  end

  def new
  	@repo =Repo.new
  end

  def create
    @user = User.find(session[:user_id])
    @repo = Repo.find_or_create_by(repo_params)
  	if @repo.save
      @user.repos << @repo
  		redirect_to repos_path
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
