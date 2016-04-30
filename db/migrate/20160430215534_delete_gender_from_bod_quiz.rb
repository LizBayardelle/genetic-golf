class DeleteGenderFromBodQuiz < ActiveRecord::Migration
  def change
    remove_column :bod_quizzes, :gender
  end
end
