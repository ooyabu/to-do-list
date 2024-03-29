class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :text
      t.boolean :done, default: false
      t.references :project, index: true

      t.timestamps
    end
  end
end
