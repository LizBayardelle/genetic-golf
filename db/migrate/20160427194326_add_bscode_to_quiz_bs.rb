class AddBscodeToQuizBs < ActiveRecord::Migration
  def change
    add_column :quiz_bs, :bscode, :string
  end
end
