class CreateFileChanges < ActiveRecord::Migration
  def change
    create_table :file_changes do |t|
      t.belongs_to :commit
      t.text :file_path
      t.string :action_taken
      t.timestamps
    end
  end
end
