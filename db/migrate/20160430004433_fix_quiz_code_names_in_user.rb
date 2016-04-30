class FixQuizCodeNamesInUser < ActiveRecord::Migration
  def change
    remove_column :users, :q_bs_code
    remove_column :users, :q_bf_code
    remove_column :users, :q_bb_code
    remove_column :users, :q_md_code
  end
end
