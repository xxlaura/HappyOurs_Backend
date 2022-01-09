class FixEventTypesColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :eventtypes_id, :event_type_id
  end
end
