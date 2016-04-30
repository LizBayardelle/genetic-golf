class RenameQuizBsToBalQuiz < ActiveRecord::Migration
  def change
    rename_table :quiz_bs, :bal_quizzes
  end
end
