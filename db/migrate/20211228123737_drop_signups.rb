class DropSignups < ActiveRecord::Migration[6.0]
  def change
    drop_table :signups
  end
end
