class AddPublishedToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :published, :boolean, default: false
  end
end
