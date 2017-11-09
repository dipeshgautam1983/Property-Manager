class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :amount
      t.string :type
      t.date :paymentdate
      t.boolean :paymentstatus
      t.string :duemonth
      t.string :comment

      t.timestamps null: false
    end
  end
end
