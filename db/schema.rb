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

ActiveRecord::Schema[7.0].define(version: 2023_09_06_163417) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mealplan_recipes", force: :cascade do |t|
    t.bigint "mealplan_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mealplan_id"], name: "index_mealplan_recipes_on_mealplan_id"
    t.index ["recipe_id"], name: "index_mealplan_recipes_on_recipe_id"
  end

  create_table "mealplans", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "query_input"
    t.string "status"
    t.string "query_input_response"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "initial_date"
    t.date "final_date"
    t.index ["user_id"], name: "index_mealplans_on_user_id"
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "ingredient_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "unit"
    t.index ["ingredient_id"], name: "index_recipe_ingredients_on_ingredient_id"
    t.index ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "instructions"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "shoppinglist_items", force: :cascade do |t|
    t.bigint "shoppinglist_id", null: false
    t.bigint "recipe_ingredient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_ingredient_id"], name: "index_shoppinglist_items_on_recipe_ingredient_id"
    t.index ["shoppinglist_id"], name: "index_shoppinglist_items_on_shoppinglist_id"
  end

  create_table "shoppinglists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "mealplan_id"
    t.index ["mealplan_id"], name: "index_shoppinglists_on_mealplan_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "mealplan_recipes", "mealplans"
  add_foreign_key "mealplan_recipes", "recipes"
  add_foreign_key "mealplans", "users"
  add_foreign_key "recipe_ingredients", "ingredients"
  add_foreign_key "recipe_ingredients", "recipes"
  add_foreign_key "recipes", "users"
  add_foreign_key "shoppinglist_items", "recipe_ingredients"
  add_foreign_key "shoppinglist_items", "shoppinglists"
end
