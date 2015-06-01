class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :event_id
      t.text :note_body

      t.timestamps

    end
  end
end
