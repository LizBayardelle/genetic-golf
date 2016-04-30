class FixHandLengthVariableName < ActiveRecord::Migration
  def change
    rename_column :bod_quizzes, :hand_length_integer, :hand_length_integer
  end
end
