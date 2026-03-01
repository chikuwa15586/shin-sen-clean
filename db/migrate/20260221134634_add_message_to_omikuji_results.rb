class AddMessageToOmikujiResults < ActiveRecord::Migration[8.1]
  def change
    add_column :omikuji_results, :message, :string
  end
end
