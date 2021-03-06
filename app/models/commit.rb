class Commit < ActiveRecord::Base
    belongs_to :branch
    belongs_to :repo
    has_many :file_changes
    delegate :name, to: :branch, allow_nil: true, prefix: true



    validates_presence_of :message, :sha, :full_diff

    def path_names
      files = []
      self.file_changes.each do |change|
        files << change.file_path
      end
      files
    end
end
