class RemoveColumnsFromOmikujiResults < ActiveRecord::Migration[8.1]
  def change
    remove_column :omikuji_results, :image, :string
    remove_column :omikuji_results, :message, :string
    remove_column :omikuji_results, :rarity, :string
    remove_column :omikuji_results, :result, :string
  end
end