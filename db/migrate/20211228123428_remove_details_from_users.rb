class RemoveDetailsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :signup_event_number, :integer
    remove_column :users, :host_event_number, :integer
  end
end
