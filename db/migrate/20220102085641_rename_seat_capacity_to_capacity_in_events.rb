class RenameSeatCapacityToCapacityInEvents < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :seat_capacity, :capacity
  end
end
