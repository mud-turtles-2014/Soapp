class CreateBranch < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.belongs_to :repo
      t.string :name
      t.timestamps
    end
  end
end
