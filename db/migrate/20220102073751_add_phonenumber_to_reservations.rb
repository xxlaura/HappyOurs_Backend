class AddPhonenumberToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :phonenumber, :integer
  end
end
