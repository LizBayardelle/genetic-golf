class CreateSwingBooks < ActiveRecord::Migration
  def change
    create_table :swing_books do |t|
      t.integer :user_id
      t.integer :swing_code

      t.timestamps null: false
    end
    add_index :swing_books, :user_id
  end
end
