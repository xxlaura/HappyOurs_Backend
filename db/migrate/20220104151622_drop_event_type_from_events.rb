class DropEventTypeFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :event_type, :string
  end
end
