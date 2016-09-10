class RenameTypeColumn < ActiveRecord::Migration
  def change
    rename_column :newsletters, :type, :newsletter_type
  end
end
