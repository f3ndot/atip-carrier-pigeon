class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :lob_id

      t.timestamps null: false
    end
    add_index :letters, :lob_id, unique: true
    add_reference :letters, :user, index: true  
  end
end
