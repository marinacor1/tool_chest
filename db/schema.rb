ActiveRecord::Schema.define(version: 20160413143359) do

  create_table "tools", force: :cascade do |t|
    t.text     "name"
    t.decimal  "price"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "tools", ["user_id"], name: "index_tools_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "password_confirmation"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end
