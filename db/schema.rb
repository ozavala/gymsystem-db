# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_03_30_184713) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_types", force: :cascade do |t|
    t.string "acc_type"
    t.string "acc_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.bigint "user_id"
    t.string "add_line1"
    t.string "add_line2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.integer "region"
    t.integer "sector"
    t.text "instruction"
    t.integer "use_of"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "enrollments", force: :cascade do |t|
    t.bigint "payment_id"
    t.bigint "package_id"
    t.date "enrollment_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["package_id"], name: "index_enrollments_on_package_id"
    t.index ["payment_id"], name: "index_enrollments_on_payment_id"
  end

  create_table "gl_accounts", force: :cascade do |t|
    t.string "acc_code"
    t.string "acc_parent_code"
    t.string "name"
    t.string "description"
    t.bigint "account_type_id"
    t.bigint "period_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_type_id"], name: "index_gl_accounts_on_account_type_id"
    t.index ["period_type_id"], name: "index_gl_accounts_on_period_type_id"
  end

  create_table "gymsites", force: :cascade do |t|
    t.string "surname"
    t.string "legal_id"
    t.string "logo"
    t.text "description"
    t.string "email"
    t.date "start_date"
    t.date "thru_date"
  end

  create_table "invoice_lines", force: :cascade do |t|
    t.bigint "package_id"
    t.integer "qty"
    t.decimal "price"
    t.text "description"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["package_id"], name: "index_invoice_lines_on_package_id"
  end

  create_table "invoice_types", force: :cascade do |t|
    t.string "invoice_type_code"
    t.decimal "tax_percent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.bigint "payment_id"
    t.string "invoice_number"
    t.string "invoice_refernce"
    t.date "issue_date"
    t.decimal "amount"
    t.boolean "tax_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payment_id"], name: "index_invoices_on_payment_id"
  end

  create_table "packages", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.date "from_date"
    t.date "thru_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.bigint "gl_account_id"
    t.bigint "user_account_id"
    t.date "payment_date"
    t.date "due_date"
    t.integer "payment_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gl_account_id"], name: "index_payments_on_gl_account_id"
    t.index ["user_account_id"], name: "index_payments_on_user_account_id"
  end

  create_table "period_types", force: :cascade do |t|
    t.string "period_type_code"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.bigint "user_id"
    t.string "number"
    t.integer "purpose"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_phones_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "user_id"
    t.string "username"
    t.string "avatar"
    t.date "birthday"
    t.integer "gender"
    t.integer "role"
    t.date "start_date"
    t.date "thru_date"
    t.bigint "enrollment_id"
    t.decimal "enrollment_fee", precision: 20, scale: 2
    t.boolean "active"
    t.integer "level"
    t.integer "source"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enrollment_id"], name: "index_profiles_on_enrollment_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
    t.index ["username"], name: "index_profiles_on_username"
  end

  create_table "roles", force: :cascade do |t|
    t.string "role_name"
  end

  create_table "roles_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.date "from_date"
    t.date "thru_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_roles_users_on_role_id"
    t.index ["user_id"], name: "index_roles_users_on_user_id"
  end

  create_table "user_accounts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "gl_account_id"
    t.date "from_date"
    t.date "thru_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gl_account_id"], name: "index_user_accounts_on_gl_account_id"
    t.index ["user_id"], name: "index_user_accounts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.bigint "gymsite_id"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "id_document"
    t.integer "document_type"
    t.string "irs_id"
    t.string "password_digest"
    t.index ["gymsite_id"], name: "index_users_on_gymsite_id"
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "enrollments", "packages"
  add_foreign_key "enrollments", "payments"
  add_foreign_key "gl_accounts", "account_types"
  add_foreign_key "gl_accounts", "period_types"
  add_foreign_key "invoice_lines", "packages"
  add_foreign_key "invoices", "payments"
  add_foreign_key "payments", "gl_accounts"
  add_foreign_key "payments", "user_accounts"
  add_foreign_key "phones", "users"
  add_foreign_key "profiles", "enrollments"
  add_foreign_key "profiles", "users"
  add_foreign_key "roles_users", "roles"
  add_foreign_key "roles_users", "users"
  add_foreign_key "user_accounts", "gl_accounts"
  add_foreign_key "user_accounts", "users"
  add_foreign_key "users", "gymsites"
end
