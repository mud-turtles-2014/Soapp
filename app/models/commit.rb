class Commit < ActiveRecord::Base
    belongs_to :branch
    belongs_to :repo
    has_many :file_changes


    validates :message, presence: true

    def path_names
      files = []
      self.file_changes.each do |change|
        files << change.file_path
      end
      files
    end

    def heat_map(repo_commits)# returns an array with the file name and the times it was counted
      all_paths = []
      repo_commits.flatten.each do |com|
        com.file_changes.each do |change|
          all_paths << change.file_path
        end
        all_paths
      end
      order = all_paths.flatten.inject(Hash.new(0)){|path, freq| path[freq] += 1 ; path}.to_a.sort{|a,b|b[1]<=>a[1] }
      p order
    end

end
