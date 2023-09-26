# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_25_204313) do
  create_table "user_data", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "user_type"
    t.integer "user_types_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_types_id"], name: "index_user_data_on_user_types_id"
  end

  create_table "user_types", force: :cascade do |t|
    t.string "user_type"
    t.string "rules"
    t.integer "user_data_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_data_id"], name: "index_user_types_on_user_data_id"
  end

  add_foreign_key "user_data", "user_types", column: "user_types_id"
  add_foreign_key "user_types", "user_data", column: "user_data_id"
end
