ActiveRecord::Schema.define(version: 2020_06_12_035329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string "desc"
    t.bigint "prompt_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prompt_id"], name: "index_actions_on_prompt_id"
  end

  create_table "moods", force: :cascade do |t|
    t.string "feeling"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prompts", force: :cascade do |t|
    t.string "desc"
    t.boolean "controllable"
    t.bigint "mood_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mood_id"], name: "index_prompts_on_mood_id"
  end

  add_foreign_key "actions", "prompts"
  add_foreign_key "prompts", "moods"
end
