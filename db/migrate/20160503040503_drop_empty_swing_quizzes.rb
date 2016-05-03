class DropEmptySwingQuizzes < ActiveRecord::Migration
  def change
    drop_table :swing_quizzes
  end
end
