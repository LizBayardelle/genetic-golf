class RenameQuizBfToBfQuiz < ActiveRecord::Migration
  def change
    rename_table :quiz_bfs, :bf_quiz
  end
end
