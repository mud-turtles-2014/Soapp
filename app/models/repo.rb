class Repo < ActiveRecord::Base
    has_many :branches
    has_many :team_projects
    has_many :users, through: :team_projects
    has_many :commits, through: :branches

    validates :name, presence: true
    before_save :make_display_name

  def find_collisions
    files = []
    self.commits.each do |commit|
      files << commit.path_names
    end
    collisions = files.detect{ |change| files.count(change) > 1}
      unless collisions
        return []
      end
    collisions
  end

  def make_display_name
    self.display_name = self.name.chomp('.git').reverse.split("").take_while{|c| c != '/'}.join("").reverse
  end

  def show
    @user = current_user
    repo = Repo.find(params[:id])
    @repo_commits = heat_map(repo.commits)
    branches = repo.branches
    @non_user_branches = branches.where.not(user_id: @user.id)
    @user_branches = branches.where(user_id: @user.id)

    if repo.branches.length > 0
      @collisions = branches.first.repo.find_collisions
    else
      @collisions = []
    end 
  end
  
end
