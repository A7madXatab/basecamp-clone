class PeopleProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :people_projects do |t|
      t.belongs_to :person, null: false, foreign_key: true
      t.belongs_to :project, null: true, foreign_key: true
      t.timestamps
    end
  end
end
