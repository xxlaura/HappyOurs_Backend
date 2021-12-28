class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :phone_number, :integer
    add_column :users, :signup_event_number, :integer
    add_column :users, :host_event_number, :integer
  end
end
