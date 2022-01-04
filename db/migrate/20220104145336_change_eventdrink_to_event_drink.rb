class ChangeEventdrinkToEventDrink < ActiveRecord::Migration[6.0]
  def change
    rename_table :eventdrinks, :event_drinks
  end
end
