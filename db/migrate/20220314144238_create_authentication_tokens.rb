class CreateAuthenticationTokens < ActiveRecord::Migration[6.0]
  def change
    create_table :authentication_tokens do |t|
      t.string :body
      t.references :user, null: false, foreign_key: true
      t.datetime :last_used_at
      t.string :ip_addres

      t.timestamps
    end
  end
end
