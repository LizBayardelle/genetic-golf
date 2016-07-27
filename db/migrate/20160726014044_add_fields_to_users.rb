class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :birthday, :date
    add_column :users, :dom_hand, :string
    add_column :users, :sport, :string
    add_column :users, :g_years, :integer
    add_column :users, :g_rounds, :integer
    add_column :users, :g_practice, :integer
    add_column :users, :handicap, :integer
    add_column :users, :g_score, :integer
    add_column :users, :admin, :boolean
  end
end
