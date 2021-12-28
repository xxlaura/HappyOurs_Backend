class ChangeSignUpsToSignups < ActiveRecord::Migration[6.0]
  def change
    rename_table :sign_ups, :signups
  end
end
