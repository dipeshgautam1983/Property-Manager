class AddTenantRefToApartment < ActiveRecord::Migration
  def change
    add_reference :apartments, :tenant, index: true, foreign_key: true
  end
end
