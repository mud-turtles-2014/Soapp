class User < ActiveRecord::Base
  has_many :team_projects
  has_many :repos, through: :team_projects

  validates :unsername, :email, :token, :name,
            presence: true
end
