class CreateTeamProjects < ActiveRecord::Migration
  def change
    create_table :team_projects do |t|
      t.belongs_to :repo
      t.belongs_to :user
    end
  end
end
