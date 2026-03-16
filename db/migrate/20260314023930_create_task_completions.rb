class CreateTaskCompletions < ActiveRecord::Migration[8.1]
  def change
    create_table :task_completions do |t|
      t.references :task, null: false, foreign_key: true
      t.references :omikuji_result, null: false, foreign_key: true
      t.boolean :completed, default: false, null: false

      t.timestamps
    end
  end
end
