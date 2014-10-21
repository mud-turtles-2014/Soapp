 class ReposController < ApplicationController


  def index
    @user = current_user
    @soapps_repos = @user.repos.all
    @soapps_repos_commits = @user.repos.includes(:commits)

    # used for the new button
    @github_repos = get_github_repos
    @repo = Repo.new

    respond_to do |format|
      format.html{render 'index.html.erb'}
      format.json{render 'index.json.jbuilder'}
    end
  end

  def heat_map(repo_commits)# returns an array with the file name and the times it was counted
      all_paths = []
      repo_commits.each do |com|
        com.file_changes.each do |change|
          all_paths << change.file_path
        end
        all_paths
      end
      order = all_paths.inject(Hash.new(0)){|path, freq| path[freq] += 1 ; path}.to_a.sort{|a,b|b[1]<=>a[1] }
      order
  end

  def create
    @user = current_user
    User.find(session[:user_id])
    @repo = Repo.find_or_create_by(name: repo_params)
    @user.repos << @repo

    # render json: @repo
  	if @repo.save
  		redirect_to instruction_path(@user)
  	else
  		redirect_to new_repo_path
  	end
  end

  def show
    @user = current_user
    repo = Repo.find(params[:id])
    @repo_commits = heat_map(repo.commits)
    branches = repo.branches
    @non_user_branches = branches.where.not(user_id: @user.id)
    @user_branches = branches.where(user_id: @user.id)

    if repo.branches.length > 0
      @collisions = repo.find_collisions
    else
      @collisions = []
    end
  end

  def destroy
    TeamProject.find_by(repo_id: params[:id], user_id: session[:user_id] ).destroy
    render json: :ok
  end


private
  def repo_params
    params.require(:name)
  end

  def branch_params
    params.require(:name)
  end

  def get_github_repos
    @user = current_user
    github = Github.new  oauth_token: @user.token
    github.repos.list.map { |repo| repo.clone_url }
  end

end
