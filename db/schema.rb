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

ActiveRecord::Schema[7.0].define(version: 2023_04_16_011958) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breeds", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.text "name"
    t.text "address"
    t.text "email"
    t.text "phone"
    t.date "registration_date"
    t.text "status"
    t.text "notification_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pet_customers", force: :cascade do |t|
    t.bigint "pet_id", null: false
    t.bigint "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_pet_customers_on_customer_id"
    t.index ["pet_id"], name: "index_pet_customers_on_pet_id"
  end

  create_table "pets", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.text "name"
    t.bigint "species_id", null: false
    t.bigint "breed_id", null: false
    t.date "birth_date"
    t.text "gender"
    t.jsonb "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["breed_id"], name: "index_pets_on_breed_id"
    t.index ["customer_id"], name: "index_pets_on_customer_id"
    t.index ["species_id"], name: "index_pets_on_species_id"
  end

  create_table "species", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pet_customers", "customers"
  add_foreign_key "pet_customers", "pets"
  add_foreign_key "pets", "breeds"
  add_foreign_key "pets", "customers"
  add_foreign_key "pets", "species"
end
