class User < ActiveRecord::Base
  has_many :team_projects
  has_many :repos, through: :team_projects

end
