class FixMyperCode < ActiveRecord::Migration
  def change
    rename_column :per_quizzes, :myper, :myper_code
  end
end
