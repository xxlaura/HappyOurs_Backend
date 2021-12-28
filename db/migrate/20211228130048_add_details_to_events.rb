class AddDetailsToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :begins_at, :datetime
    add_column :events, :duration, :integer
  end
end
