class FileChange < ActiveRecord::Base
  belongs_to :commit

  validates :action_taken, :file_path, presence: true

  def self.parse_and_create(diff)
    new_files = []

    diff.scan(/([AMD])\t(.*?)(?=\n)/).each do |type, path|
      new_files << FileChange.create(action_taken: type[0], file_path: path)
    end

    new_files
  end
end

