class RemoveFlCodeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :q_fl_code
  end
end
