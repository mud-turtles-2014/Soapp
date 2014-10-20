class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid, null: false
      t.string :name, null: false
      t.string :email, null: false
      t.string :token, null: false
      t.string :avatar_url

      t.timestamps
    end
    add_index "users", ["uid"], name: "index_users_on_uid", unique: true, using: :btree
  end
end
# provider:string uid:string name:string
