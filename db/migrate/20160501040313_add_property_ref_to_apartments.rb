class AddPropertyRefToApartments < ActiveRecord::Migration
  def change
    add_reference :apartments, :property, index: true, foreign_key: true
  end
end
