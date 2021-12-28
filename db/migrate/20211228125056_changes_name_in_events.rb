class ChangesNameInEvents < ActiveRecord::Migration[6.0]
  def change
    change_table :events do |t|
      t.rename :event_name, :name
      t.rename :event_summary, :summary
      t.rename :event_description, :description
    end
  end
end
