class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_summary
      t.string :event_description
      t.string :location
      t.date :event_date
      t.time :start_time
      t.time :end_time
      t.integer :seat_capacity
      t.integer :seat_confirmed
      t.string :event_type
      t.string :event_image

      t.timestamps
    end
  end
end
