class AddPropertyManagerRefToTickets < ActiveRecord::Migration
  def change
    add_reference :tickets, :PropertyManager, index: true, foreign_key: true
  end
end
