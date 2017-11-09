class CreateSystemUsers < ActiveRecord::Migration
  def change
    create_table :system_users do |t|
      t.string :firstname
      t.string :lastname
      t.string :identification
      t.date :dob
      t.string :sex
      t.string :address
      t.string :contact
      t.string :email
      t.string :password_digest
      t.string :description
      t.string :type

      t.timestamps null: false
    end
  end
end
