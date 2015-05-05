class ChangeDateColumnsOnEvents < ActiveRecord::Migration
  def change
    remove_column :events, :start_date
    remove_column :events, :start_time
    remove_column :events, :end_date
    remove_column :events, :end_time
    add_column :events, :starts_at, :datetime
    add_column :events, :ends_at, :datetime
  end
end
