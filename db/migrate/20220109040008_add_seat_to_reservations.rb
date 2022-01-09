class AddSeatToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :seat, :integer
  end
end
