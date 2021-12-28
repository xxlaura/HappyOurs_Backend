class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :summary
      t.string :description
      t.integer :year

      t.timestamps
    end
  end
end
