class ChangeEventtypesToEventTypes < ActiveRecord::Migration[6.0]
  def change
    rename_table :eventtypes, :event_types
  end
end
