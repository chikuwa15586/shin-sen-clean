class AddColumnsToFortunes < ActiveRecord::Migration[8.1]
  def change
    add_column :fortunes, :rarity, :string
    add_column :fortunes, :message, :string
    add_column :fortunes, :image, :string
    add_column :fortunes, :probability, :integer
  end
end
