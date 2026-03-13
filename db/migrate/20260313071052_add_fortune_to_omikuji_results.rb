class AddFortuneToOmikujiResults < ActiveRecord::Migration[8.1]
  def change
    add_reference :omikuji_results, :fortune, null: false, foreign_key: true
  end
end
