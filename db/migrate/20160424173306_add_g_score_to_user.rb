class AddGScoreToUser < ActiveRecord::Migration
  def change
    add_column :users, :g_score, :int
  end
end
