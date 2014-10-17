class Branch < ActiveRecord::Base
    belongs_to :repo
    has_many :commits
    belongs_to :user
    validates :name, presence: true
end
