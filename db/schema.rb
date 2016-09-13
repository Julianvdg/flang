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

ActiveRecord::Schema.define(version: 20160913133440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "texts", force: :cascade do |t|
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "text"
    t.index ["language_id"], name: "index_texts_on_language_id", using: :btree
  end

  create_table "translations", force: :cascade do |t|
    t.string   "value"
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "word_id"
    t.index ["language_id"], name: "index_translations_on_language_id", using: :btree
    t.index ["word_id"], name: "index_translations_on_word_id", using: :btree
  end

  create_table "words", force: :cascade do |t|
    t.string   "value"
    t.boolean  "known"
    t.integer  "language_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "text_id"
    t.index ["language_id"], name: "index_words_on_language_id", using: :btree
    t.index ["text_id"], name: "index_words_on_text_id", using: :btree
  end

  add_foreign_key "texts", "languages"
  add_foreign_key "translations", "languages"
  add_foreign_key "translations", "words"
  add_foreign_key "words", "languages"
  add_foreign_key "words", "texts"
end
