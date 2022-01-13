class AddLatitudeToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :latitude, :float
  end
end
