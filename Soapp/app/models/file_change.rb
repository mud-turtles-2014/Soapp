class FileChange < ActiveRecord::Base
  belongs_to :commit

  validates :change, presence: true

  def self.make_diffs(diff,commit_id)
    p diff
    p commit id
  end
end
