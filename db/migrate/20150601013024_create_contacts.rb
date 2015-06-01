class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone_number
      t.integer :user_id
      t.string :email

      t.timestamps

    end
  end
end
