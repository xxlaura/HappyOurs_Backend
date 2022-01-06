class RemovePublishedFromEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :published, :boolean
  end
end
