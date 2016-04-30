class RenameFlexQuizToFlexQuizzes < ActiveRecord::Migration
  def change
    rename_table :flex_quiz, :flex_quizzes
  end
end
