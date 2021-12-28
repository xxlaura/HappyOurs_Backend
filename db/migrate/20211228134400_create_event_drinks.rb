class CreateEventDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :event_drinks do |t|
      t.references :events, null: false, foreign_key: true
      t.references :drinks, null: false, foreign_key: true
    end
  end
end
