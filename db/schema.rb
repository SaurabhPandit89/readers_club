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

ActiveRecord::Schema.define(version: 20171101105053) do

  create_table "active_admin_comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "book_ratings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "rating_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "books_id"
    t.bigint "ratings_id"
    t.bigint "users_id"
    t.index ["books_id"], name: "index_book_ratings_on_books_id"
    t.index ["ratings_id"], name: "index_book_ratings_on_ratings_id"
    t.index ["users_id"], name: "index_book_ratings_on_users_id"
  end

  create_table "books", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "genre_id"
    t.index ["genre_id"], name: "index_books_on_genre_id"
  end

  create_table "genres", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "rating_number"
    t.string "rating_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "readers_group_members", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "readers_groups_id"
    t.bigint "users_id"
    t.bigint "roles_id"
    t.index ["readers_groups_id"], name: "index_readers_group_members_on_readers_groups_id"
    t.index ["roles_id"], name: "index_readers_group_members_on_roles_id"
    t.index ["users_id"], name: "index_readers_group_members_on_users_id"
  end

  create_table "readers_groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "review_text", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "books_id"
    t.bigint "users_id"
    t.index ["books_id"], name: "index_reviews_on_books_id"
    t.index ["users_id"], name: "index_reviews_on_users_id"
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "first_name", null: false
    t.string "middle_name"
    t.string "last_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "roles_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["roles_id"], name: "index_users_on_roles_id"
  end

  add_foreign_key "book_ratings", "books", column: "books_id"
  add_foreign_key "book_ratings", "ratings", column: "ratings_id"
  add_foreign_key "book_ratings", "users", column: "users_id"
  add_foreign_key "books", "genres"
  add_foreign_key "readers_group_members", "readers_groups", column: "readers_groups_id"
  add_foreign_key "readers_group_members", "roles", column: "roles_id"
  add_foreign_key "readers_group_members", "users", column: "users_id"
  add_foreign_key "reviews", "books", column: "books_id"
  add_foreign_key "reviews", "users", column: "users_id"
  add_foreign_key "users", "roles", column: "roles_id"
end
