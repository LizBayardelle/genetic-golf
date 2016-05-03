class AddIndividualSwingDigits < ActiveRecord::Migration
  def change
    add_column :swing_books, :swing01, :integer
    add_column :swing_books, :swing02, :integer
    add_column :swing_books, :swing03, :integer
    add_column :swing_books, :swing04, :integer
    add_column :swing_books, :swing05, :integer
    add_column :swing_books, :swing06, :integer
    add_column :swing_books, :swing07, :integer
    add_column :swing_books, :swing08, :integer
    add_column :swing_books, :swing09, :integer
    add_column :swing_books, :swing10, :integer
  end
end
