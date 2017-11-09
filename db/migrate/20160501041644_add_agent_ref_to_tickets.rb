class AddAgentRefToTickets < ActiveRecord::Migration
  def change
    add_reference :tickets, :agent, index: true, foreign_key: true
  end
end
