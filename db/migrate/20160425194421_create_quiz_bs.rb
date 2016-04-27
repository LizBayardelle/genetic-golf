class CreateQuizBs < ActiveRecord::Migration
  def change
    create_table :quiz_bs do |t|
      t.integer :user_id
      t.integer :bs01
      t.integer :bs02
      t.integer :bs03
      t.integer :bs04
      t.integer :bs05
      t.integer :bs06

      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :quiz_bs, :user_id
  end
end
