class AddRarityToOmikujiResults < ActiveRecord::Migration[8.1]
  def change
    add_column :omikuji_results, :rarity, :string
  end
end
