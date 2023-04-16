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

ActiveRecord::Schema[7.0].define(version: 2023_04_16_175118) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointment_prescriptions", force: :cascade do |t|
    t.bigint "appointment_id", null: false
    t.bigint "prescription_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_appointment_prescriptions_on_appointment_id"
    t.index ["prescription_id"], name: "index_appointment_prescriptions_on_prescription_id"
  end

  create_table "appointment_services", force: :cascade do |t|
    t.bigint "appointment_id", null: false
    t.bigint "service_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_appointment_services_on_appointment_id"
    t.index ["service_id"], name: "index_appointment_services_on_service_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.bigint "pet_id", null: false
    t.text "post_summary"
    t.text "notes"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "doctor_id", null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["pet_id"], name: "index_appointments_on_pet_id"
  end

  create_table "bills", force: :cascade do |t|
    t.bigint "appointment_id", null: false
    t.text "status"
    t.date "due_date"
    t.datetime "time_generated"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "discount"
    t.index ["appointment_id"], name: "index_bills_on_appointment_id"
  end

  create_table "breeds", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name"
  end

  create_table "customer_pets", force: :cascade do |t|
    t.bigint "pet_id", null: false
    t.bigint "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_customer_pets_on_customer_id"
    t.index ["pet_id"], name: "index_customer_pets_on_pet_id"
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

  create_table "doctors", force: :cascade do |t|
    t.text "name"
    t.text "specialty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.text "name"
    t.bigint "species_id", null: false
    t.bigint "breed_id", null: false
    t.date "birth_date"
    t.text "gender"
    t.jsonb "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["breed_id"], name: "index_pets_on_breed_id"
    t.index ["species_id"], name: "index_pets_on_species_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.text "name"
    t.text "dosage"
    t.text "instructions"
    t.datetime "prescribed_date"
    t.date "refill_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "doctor_id", null: false
    t.index ["doctor_id"], name: "index_prescriptions_on_doctor_id"
  end

  create_table "services", force: :cascade do |t|
    t.text "name"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "cost"
  end

  create_table "species", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name"
  end

  add_foreign_key "appointment_prescriptions", "appointments"
  add_foreign_key "appointment_prescriptions", "prescriptions"
  add_foreign_key "appointment_services", "appointments"
  add_foreign_key "appointment_services", "services"
  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "pets"
  add_foreign_key "bills", "appointments"
  add_foreign_key "customer_pets", "customers"
  add_foreign_key "customer_pets", "pets"
  add_foreign_key "pets", "breeds"
  add_foreign_key "pets", "species"
  add_foreign_key "prescriptions", "doctors"
end
