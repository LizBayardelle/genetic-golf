class ChangeContactCommentToMessage < ActiveRecord::Migration
  def change
    rename_column :contacts, :comment, :message 
  end
end
