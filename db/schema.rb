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

ActiveRecord::Schema.define(version: 2018_07_07_113804) do

  create_table "hhs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lands", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Geographical_Area"
    t.float "Forest"
    t.float "Barren_and_Unculturable_land"
    t.float "Non_Agriculture_Land_Area"
    t.float "Non_Agriculture_Perennial"
    t.float "Non_Agriculture_Temporary"
    t.float "Culturable_Waste_Land"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_and_productivity_of_rices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Area_2015"
    t.float "Production_2015"
    t.float "Productivity_2015"
    t.float "Area_2016"
    t.float "Production_2016"
    t.float "Productivity_2016"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity10s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Mango_Area_2015"
    t.float "Mango_Production_2015"
    t.float "Mango_Area_2016"
    t.float "Mango_Production_2016"
    t.float "Guava_Area_2015"
    t.float "Guava_Production_2015"
    t.float "Guava_Area_2016"
    t.float "Guava_Production_2016"
    t.float "Litchi_Area_2015"
    t.float "Litchi_Production_2015"
    t.float "Litchi_Area_2016"
    t.float "Litchi_Production_2016"
    t.float "Banana_Area_2015"
    t.float "Banana_Production_2015"
    t.float "Banana_Area_2016"
    t.float "Banana_Production_2016"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity11s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Potato_Area_2015"
    t.float "Potato_Production_2015"
    t.float "Potato_Area_2016"
    t.float "Potato_Production_2016"
    t.float "Onion_Area_2015"
    t.float "Onion_Production_2015"
    t.float "Onion_Area_2016"
    t.float "Onion_Production_2016"
    t.float "Cauliflower_Area_2015"
    t.float "Cauliflower_Production_2015"
    t.float "Cauliflower_Area_2016"
    t.float "Cauliflower_Production_2016"
    t.float "Brinjal_Area_2015"
    t.float "Brinjal_Production_2015"
    t.float "Brinjal_Area_2016"
    t.float "Brinjal_Production_2016"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity7s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Area_2015"
    t.float "Production_2015"
    t.float "Productivity_2015"
    t.float "Area_2016"
    t.float "Production_2016"
    t.float "Productivity_2016"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity8s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Area_2015"
    t.float "Production_2015"
    t.float "Productivity_2015"
    t.float "Area_2016"
    t.float "Production_2016"
    t.float "Productivity_2016"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity9s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Area_2015"
    t.float "Production_2015"
    t.float "Productivity_2015"
    t.float "Area_2016"
    t.float "Production_2016"
    t.float "Productivity_2016"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rainfalls", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "WinterRain_2016"
    t.float "HotWeatherRain_2016"
    t.float "SouthWestMonsoonRain_2016"
    t.float "NorthWestMonsoonRain_2016"
    t.float "Total_2016"
    t.float "WinterRain_2017"
    t.float "HotWeatherRain_2017"
    t.float "SouthWestMonsoonRain_2017"
    t.float "Total_2017"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test1s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
