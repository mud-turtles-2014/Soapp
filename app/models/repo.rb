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
end
