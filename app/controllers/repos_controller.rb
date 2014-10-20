class ReposController < ApplicationController


  def index
    @user = User.find(session[:user_id])
    @soapps_repos = @user.repos.all

    # used for the new button
      @github_repos = get_github_repos
      @repo = Repo.new
  end

  def create
    @user = User.find(session[:user_id])
    @repo = Repo.find_or_create_by(name: repo_params)
    @user.repos << @repo

    # render json: @repo
  	if @repo.save
  		redirect_to repos_path
  	else
  		redirect_to new_repo_path
  	end
  end

  def show
    @user = User.find(session[:user_id])
    repo = Repo.find(params[:id])
    branches = repo.branches
    @non_user_branches = branches.where.not(user_id: @user.id)
    @user_branches = branches.where(user_id: @user.id)

    if repo.branches.length > 0
      @collisions = branches.first.repo.find_collisions
    else
      @collisions = []
    end
  end


private
  def repo_params
    params.require(:name)
  end

  def branch_params
    params.require(:name)
  end

  def get_github_repos
    @user = User.find(session[:user_id])
    github = Github.new  oauth_token: @user.token
    github.repos.list.map { |repo| repo.clone_url }
  end

end
