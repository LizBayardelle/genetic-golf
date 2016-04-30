class CreateQuizBfs < ActiveRecord::Migration
  def change
    create_table :quiz_bfs do |t|
      t.integer :user_id
      t.integer :bf01
      t.integer :bf02
      t.integer :bf03
      t.integer :bf04
      t.integer :bf05
      t.integer :bf06
      t.integer :bf07
      t.integer :bf08
      t.integer :bf09
      t.integer :bf10
      t.string :bfcode

      t.timestamps null: false
    end
    add_index :quiz_bfs, :user_id
  end
end
