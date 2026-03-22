class AddFortuneRefToOmikujiResultsSafely < ActiveRecord::Migration[8.1]
  def change
    unless column_exists?(:omikuji_results, :fortune_id)
      add_reference :omikuji_results, :fortune, foreign_key: true
    end
  end
end