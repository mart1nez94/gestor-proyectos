class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
