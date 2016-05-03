class CreatePerQuizzes < ActiveRecord::Migration
  def change
    create_table :per_quizzes do |t|
      t.integer :user_id
      t.string :iper_code
      t.string :myper
      t.string :per_code

      t.timestamps null: false
    end
    add_index :per_quizzes, :user_id
  end
end
