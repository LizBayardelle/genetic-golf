class CreateClubFittings < ActiveRecord::Migration
  def change
    create_table :club_fittings do |t|
      t.string :club_type
      t.string :model
      t.integer :loft
      t.string :hosel_position
      t.string :shaft
      t.string :flex
      t.float :length
      t.string :grip
      t.string :grip_color_code
      t.string :color_code
      t.string :series
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    remove_column :users, :ping_full_swing
    remove_column :users, :ping_wedge
    remove_column :users, :ping_putter
  end
end
