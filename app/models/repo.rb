class Repo < ActiveRecord::Base
    has_many :branches
    has_many :team_projects
    has_many :users, through: :team_projects
    has_many :commits, through: :branches

    validates :name, presence: true

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
end
