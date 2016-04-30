class CreateBodQuizzes < ActiveRecord::Migration
  def change
    create_table :bod_quizzes do |t|
      t.integer :user_id
      t.integer :gender
      t.integer :bod_type
      t.integer :height
      t.integer :weight
      t.integer :age
      t.integer :wrist_floor
      t.string :hand_length_integer
      t.integer :longest_finger

      t.timestamps null: false
    end
    add_index :bod_quizzes, :user_id
  end
end
