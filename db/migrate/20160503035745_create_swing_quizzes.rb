class CreateSwingQuizzes < ActiveRecord::Migration
  def change
    create_table :swing_quizzes do |t|

      t.timestamps null: false
    end
  end
end
