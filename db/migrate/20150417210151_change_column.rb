class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :announcements, :expiration_date, :date
  end
end
