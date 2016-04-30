class FixHandLengthType < ActiveRecord::Migration
  def change
    change_column(:bod_quizzes, :hand_length, :integer)
  end
end
