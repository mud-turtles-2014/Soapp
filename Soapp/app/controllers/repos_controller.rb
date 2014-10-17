class ReposController < ApplicationController


  def index
    @user = User.find(session[:user_id])
    @soapps_repos = @user.repos.all
  end

  def new
    @repos = get_repos
  	@repo = Repo.new
  end

  def create
    @user = User.find(session[:user_id])
    @repo = Repo.find_or_create_by(name: repo_params)
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
    p  "*" * 80
    p params
    params.require(:name)
  end

  def get_repos
    @user = User.find(session[:user_id])
    github = Github.new  oauth_token: @user.token
    repos = []
    github.repos.list.each do |repo|
      repos << repo.clone_url
    end
    repos
  end

end
