class Repo < ActiveRecord::Base
    has_many :branches
    has_many :team_projects
    has_many :users, through: :team_projects
    has_many :commits, through: :branches

    validates :name, presence: true
end
