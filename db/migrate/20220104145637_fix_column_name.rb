class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :event_drinks, :events_id, :event_id
    rename_column :event_drinks, :drinks_id, :drink_id
  end
end
