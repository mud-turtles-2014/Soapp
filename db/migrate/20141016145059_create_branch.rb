class CreateBranch < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.belongs_to :repo
      t.belongs_to :user
      t.string :name

      t.timestamp :last_commit
      t.timestamps
    end
  end
end
