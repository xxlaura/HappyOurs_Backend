class AddLongitudeToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :longitude, :float
  end
end
