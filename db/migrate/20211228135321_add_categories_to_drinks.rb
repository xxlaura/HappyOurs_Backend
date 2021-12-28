class AddCategoriesToDrinks < ActiveRecord::Migration[6.0]
  def change
    add_reference :drinks, :categories, null: false, foreign_key: true
  end
end
