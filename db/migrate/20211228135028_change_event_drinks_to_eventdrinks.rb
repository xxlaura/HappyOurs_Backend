class ChangeEventDrinksToEventdrinks < ActiveRecord::Migration[6.0]
  def change
    rename_table :event_drinks, :eventdrinks
  end
end
