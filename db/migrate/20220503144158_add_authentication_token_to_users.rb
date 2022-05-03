class AddAuthenticationTokenToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :authentication_token, :string, limit: 30
  end
end
