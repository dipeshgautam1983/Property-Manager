class AddTenantRefToPayments < ActiveRecord::Migration
  def change
    add_reference :payments, :tenant, index: true, foreign_key: true
  end
end
