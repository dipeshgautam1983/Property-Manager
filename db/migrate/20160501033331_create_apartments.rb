class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :apartmentnumber
      t.string :apartmenttype
      t.string :status
      t.date :leasestart
      t.date :leaseend
      t.float :rent

      t.timestamps null: false
    end
  end
end
