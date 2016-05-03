class CreateSwingQuizzesAgain < ActiveRecord::Migration
  def change
    def change
      create_table :swing_quizzes do |t|
        t.integer :user_id
        t.string :swing_code

        t.timestamps null: false
      end
      add_index :swing_quizzes, :user_id
    end
  end
end
