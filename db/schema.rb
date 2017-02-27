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

ActiveRecord::Schema.define(version: 20170227054054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "components", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "incident_templates", force: :cascade do |t|
    t.string   "name"
    t.string   "status"
    t.string   "title"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incidents", force: :cascade do |t|
    t.string   "name"
    t.integer  "status"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maintenances", force: :cascade do |t|
    t.string   "name"
    t.text     "details"
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean  "remind_subscribers"
    t.boolean  "set_inprogress_at_start"
    t.boolean  "set_complete_at_end"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "pages", force: :cascade do |t|
    t.integer  "owner_id",                                                        null: false
    t.boolean  "private",                  default: false,                        null: false
    t.string   "name",                                                            null: false
    t.text     "support_url"
    t.text     "website_url"
    t.string   "notification_from_email"
    t.string   "sms_country_code",         default: "us"
    t.string   "organization_name"
    t.string   "timezone",                 default: "Eastern Time (US & Canada)", null: false
    t.boolean  "search_engine_visibility", default: false,                        null: false
    t.integer  "layout_id",                default: 0,                            null: false
    t.string   "body_background_color",    default: "ffffff",                     null: false
    t.string   "font_color",               default: "333333",                     null: false
    t.string   "light_font_color",         default: "AAAAAA",                     null: false
    t.string   "greens",                   default: "2fcc66",                     null: false
    t.string   "yellows",                  default: "f1c40f",                     null: false
    t.string   "oranges",                  default: "e67e22",                     null: false
    t.string   "reds",                     default: "e74c3c",                     null: false
    t.string   "blues",                    default: "3498DB",                     null: false
    t.string   "link_color",               default: "3498db",                     null: false
    t.string   "border_color",             default: "E0E0E0",                     null: false
    t.string   "graph_color",              default: "3498db",                     null: false
    t.string   "logo"
    t.string   "cover_photo"
    t.string   "favicon"
    t.text     "headline"
    t.text     "about"
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
    t.string   "local_url"
    t.string   "custom_domain"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
    t.integer  "subscription_plan"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
