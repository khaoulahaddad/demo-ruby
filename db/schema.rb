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

ActiveRecord::Schema.define(version: 20191122095220) do

  create_table "livres", force: :cascade do |t|
    t.string "titre"
    t.string "auteur"
    t.string "reference"
    t.string "etat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personnes", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.string "cin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "livre_id"
    t.integer "persone_id"
    t.date "date_emprunt"
    t.date "date_retour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["livre_id"], name: "index_reservations_on_livre_id"
    t.index ["persone_id"], name: "index_reservations_on_persone_id"
  end

end
