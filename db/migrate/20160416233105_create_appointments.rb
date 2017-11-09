class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :comment

      t.timestamps null: false
    end
  end
end
