class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nickname, :string
    add_column :users, :avatar, :string
  end
end
