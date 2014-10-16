class FileChange < ActiveRecord::Base
  belongs_to :commit

  validates :change, presence: true
end
