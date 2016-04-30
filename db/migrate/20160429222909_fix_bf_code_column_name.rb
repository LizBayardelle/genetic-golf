class FixBfCodeColumnName < ActiveRecord::Migration
  def change
    rename_column :flex_quiz, :bfcode, :flex_code
    rename_column :flex_quiz, :bf01, :flex01
    rename_column :flex_quiz, :bf02, :flex02
    rename_column :flex_quiz, :bf03, :flex03
    rename_column :flex_quiz, :bf04, :flex04
    rename_column :flex_quiz, :bf05, :flex05
    rename_column :flex_quiz, :bf06, :flex06
    rename_column :flex_quiz, :bf07, :flex07
    rename_column :flex_quiz, :bf08, :flex08
    rename_column :flex_quiz, :bf09, :flex09
    rename_column :flex_quiz, :bf10, :flex10
  end
end
