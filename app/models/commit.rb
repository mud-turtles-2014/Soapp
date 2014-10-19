class Commit < ActiveRecord::Base
    belongs_to :branch
    has_many :file_changes


    validates :message, presence: true

    def path_names
      files = []
      self.file_changes.each do |change|
        files << change.file_path
      end
      files
    end
end
