class CreateFitQuizzes < ActiveRecord::Migration
  def change
    create_table :fit_quizzes do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :fit01
      t.integer :fit02
      t.integer :fit03
      t.integer :fit04
      t.integer :fit05
      t.integer :fit06
      t.integer :fit07
      t.integer :fit08
      t.string :fit_code

      t.timestamps null: false
    end
  end
end
