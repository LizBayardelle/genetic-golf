class RenameQuizBfToFlexQuiz < ActiveRecord::Migration
  def change
    rename_table :quiz_bf, :flex_quiz
  end
end
