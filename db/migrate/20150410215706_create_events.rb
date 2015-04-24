class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :start_date
      t.string :start_time
      t.string :end_date
      t.string :end_time
      t.string :name
      t.string :description
      t.string :location

      t.timestamps null: false
    end
  end
end
