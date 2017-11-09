class AddTenantRefToTickets < ActiveRecord::Migration
  def change
    add_reference :tickets, :tenant, index: true, foreign_key: true
  end
end
