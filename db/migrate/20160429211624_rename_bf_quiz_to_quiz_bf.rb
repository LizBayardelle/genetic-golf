class RenameBfQuizToQuizBf < ActiveRecord::Migration
  def change
    rename_table :bf_quiz, :quiz_bf
  end
end
