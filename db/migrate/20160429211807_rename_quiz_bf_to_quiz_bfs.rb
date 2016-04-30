class RenameQuizBfToQuizBfs < ActiveRecord::Migration
  def change
    rename_table :bf_quiz, :quiz_bfs
  end
end
