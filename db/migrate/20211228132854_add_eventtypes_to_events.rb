class AddEventtypesToEvents < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :eventtypes, null: false, foreign_key: true
  end
end
