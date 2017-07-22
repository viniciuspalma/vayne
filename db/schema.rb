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

ActiveRecord::Schema.define(version: 20170722034003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "champions", force: :cascade do |t|
    t.string "version"
    t.string "api_id"
    t.string "name"
    t.string "title"
    t.text "lore"
    t.string "partype"
    t.string "tags", array: true
    t.string "ally_tips", array: true
    t.string "enemy_tips", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ally_tips"], name: "index_champions_on_ally_tips", using: :gin
    t.index ["api_id"], name: "index_champions_on_api_id"
    t.index ["enemy_tips"], name: "index_champions_on_enemy_tips", using: :gin
    t.index ["tags"], name: "index_champions_on_tags", using: :gin
    t.index ["version"], name: "index_champions_on_version"
  end

  create_table "images", force: :cascade do |t|
    t.string "full"
    t.string "group"
    t.string "sprite"
    t.integer "height"
    t.integer "width"
    t.integer "axis_y"
    t.integer "axis_x"
    t.string "imageable_type"
    t.bigint "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_images_on_imageable_type_and_imageable_id"
  end

  create_table "skins", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.integer "id_skin"
    t.bigint "champion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["champion_id"], name: "index_skins_on_champion_id"
  end

  create_table "spells", force: :cascade do |t|
    t.integer "max_rank"
    t.string "name"
    t.string "description"
    t.string "tooltip"
    t.string "effects", array: true
    t.string "cost", array: true
    t.string "range", array: true
    t.string "cooldown", array: true
    t.bigint "champion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["champion_id"], name: "index_spells_on_champion_id"
  end

end
