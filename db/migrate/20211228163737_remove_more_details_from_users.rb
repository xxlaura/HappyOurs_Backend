class RemoveMoreDetailsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :mp_session_key, :string
    remove_column :users, :unionid, :string
    remove_column :users, :phone_number, :string
  end
end
