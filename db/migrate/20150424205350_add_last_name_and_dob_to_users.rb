class AddLastNameAndDobToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_name, :string
    add_column :users, :dob, :date
  end
end
