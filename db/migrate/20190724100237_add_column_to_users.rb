class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :dob, :string
  end
end
