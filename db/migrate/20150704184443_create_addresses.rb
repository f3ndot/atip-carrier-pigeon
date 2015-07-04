class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address, required: true
      t.string :city, required: true
      t.string :province, required: true
      t.string :postal_code, required: true
      t.string :telephone
      t.string :country, default: 'Canada', required: true

      t.timestamps null: false
    end
    add_reference :addresses, :user, index: true  
  end
end
