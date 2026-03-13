class AddProbabilityToFortunes < ActiveRecord::Migration[8.1]
  def change
    add_column :fortunes, :probability, :integer
  end
end
