class AddDrinkTypeToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :drink_type, :integer
  end
end
