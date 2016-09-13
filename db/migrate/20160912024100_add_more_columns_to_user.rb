class AddMoreColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :g_score_start, :integer
    rename_column :users, :g_score, :g_score_current
    add_column :users, :ping_full_swing, :string
    add_column :users, :ping_putter, :string
    add_column :users, :ping_wedge, :string
  end
end
