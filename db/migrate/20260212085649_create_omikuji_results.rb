# db/migrate/xxxx_create_omikuji_results.rb
class CreateOmikujiResults < ActiveRecord::Migration[8.1]
  def change
    create_table :omikuji_results do |t|
      t.references :user, null: false, foreign_key: true
      t.string :result, null: false
      t.string :image, null: false

      t.timestamps
    end
  end
end
