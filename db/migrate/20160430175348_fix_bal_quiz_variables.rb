class FixBalQuizVariables < ActiveRecord::Migration
  def change
    rename_column :bal_quizzes, :bs01, :bal01
    rename_column :bal_quizzes, :bs02, :bal02
    rename_column :bal_quizzes, :bs03, :bal03
    rename_column :bal_quizzes, :bs04, :bal04
    rename_column :bal_quizzes, :bs05, :bal05
    rename_column :bal_quizzes, :bs06, :bal06
    rename_column :bal_quizzes, :bscode, :bal_code
  end
end
