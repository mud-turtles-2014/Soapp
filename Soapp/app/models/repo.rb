class Repo < ActiveRecord::Base
    has_many :branches
    has_many :team_projects
    has_many :users, through: :team_projects

    validates :name, presence: true
end
