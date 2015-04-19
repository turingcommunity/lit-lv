class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :title
      t.text :body
      t.datetime :expiration_date
      t.string :created_by

      t.timestamps null: false
    end
  end
end
