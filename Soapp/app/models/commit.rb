class Commit < ActiveRecord::Base
    belongs_to :branch
    has_many :file_changes
end
