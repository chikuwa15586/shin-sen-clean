class RemoveUnusedColumnsFromFortunesrails < ActiveRecord::Migration[8.1]
  def change
    remove_column :fortunes, :description, :text
    remove_column :fortunes, :weight, :integer
  end
end
