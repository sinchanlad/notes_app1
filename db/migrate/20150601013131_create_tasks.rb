class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      t.integer :contact_id
      t.date :due_on
      t.integer :event_id

      t.timestamps

    end
  end
end
