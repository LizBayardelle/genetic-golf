class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :q_bs_code, :string
    add_column :users, :q_fl_code, :string
    add_column :users, :q_bb_code, :string
    add_column :users, :q_md_code, :string
    add_column :users, :gender, :string
    add_column :users, :birthday, :date
    add_column :users, :dom_hand, :string
    add_column :users, :sport, :string
    add_column :users, :g_years, :int
    add_column :users, :g_rounds, :int
    add_column :users, :g_practice, :int
    add_column :users, :handicap, :int
  end
end
