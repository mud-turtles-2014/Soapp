class CreateRepo < ActiveRecord::Migration
  def change
    create_table :repos do |t|
      t.string :name
      t.string :display_name
      t.timestamp :last_commit
      t.timestamps
    end
  end
end
