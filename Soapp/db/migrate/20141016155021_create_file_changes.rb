class CreateFileChanges < ActiveRecord::Migration
  def change
    create_table :file_changes do |t|
      t.belongs_to :commit
      t.text :changes
      t.timestamps
    end
  end
end
