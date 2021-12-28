class RemoveDetailsFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :event_date, :date
    remove_column :events, :start_time, :time
    remove_column :events, :end_time, :time
    remove_column :events, :seat_confirmed, :integer
  end
end
