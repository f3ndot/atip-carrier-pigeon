class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, required: true
  end
end
