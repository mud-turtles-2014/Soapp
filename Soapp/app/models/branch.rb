class Branch < ActiveRecord::Base
    belongs_to :repo
    has_many :commits
end
