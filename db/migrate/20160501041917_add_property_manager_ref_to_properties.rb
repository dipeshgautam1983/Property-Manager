class AddPropertyManagerRefToProperties < ActiveRecord::Migration
  def change
    add_reference :properties, :PropertyManager, index: true, foreign_key: true
  end
end
