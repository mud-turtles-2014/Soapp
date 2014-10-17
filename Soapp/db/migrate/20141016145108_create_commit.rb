class CreateCommit < ActiveRecord::Migration
  def change
    create_table :commits do |t|
      t.belongs_to :branch
      t.string :message
      t.string :sha

      t.timestamps
    end
  end
end
