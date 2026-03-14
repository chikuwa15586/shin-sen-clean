class CreateTasks < ActiveRecord::Migration[8.1]
  def change
    create_table "tasks", force: :cascade do |t|
      t.string "title"
      t.text "content"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
