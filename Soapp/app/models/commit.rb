class Commit < ActiveRecord::Base
    belongs_to :branch
    before_save :find_or_create_branch
    has_many :file_changes

    validates :message, presence: true

    def find_or_create_branch(params)

    end
end
