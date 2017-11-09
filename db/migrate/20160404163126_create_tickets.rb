class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :description
      t.string :status
      t.string :agentcomment

      t.timestamps null: false
    end
  end
end
