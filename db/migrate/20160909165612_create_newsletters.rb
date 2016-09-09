class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :title
      t.text :body
      t.string :type
      t.integer :week
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
