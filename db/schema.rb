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

ActiveRecord::Schema.define(version: 2018_07_11_121052) do

  create_table "agricultural_credit2s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Target"
    t.float "Achievement"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agricultural_inputs4s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Urea"
    t.float "DAP"
    t.float "SSP"
    t.float "MOP"
    t.float "Ammonium_Sulphate"
    t.float "Complex"
    t.float "Total"
    t.float "N"
    t.float "P"
    t.float "K"
    t.float "Total_NPK"
    t.float "Grand_Total"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agricultural_inputs5s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Urea"
    t.float "DAP"
    t.float "SSP"
    t.float "MOP"
    t.float "Ammonium_Sulphate"
    t.float "Complex"
    t.float "Total"
    t.float "N"
    t.float "P"
    t.float "K"
    t.float "Total_NPK"
    t.float "Grand_Total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agricultural_inputs6s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Target_Physical"
    t.float "Target_Financial"
    t.float "Achievement_Physical"
    t.float "Achievement_Financial"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agricultural_inputs7s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Urea"
    t.float "Tractor"
    t.float "Combine_Harvestor"
    t.float "Zero_Tillage"
    t.float "Pumpset"
    t.float "Power_Tiller"
    t.float "Manually_Operated_Tools"
    t.float "Thresher"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agricultural_inputs8s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Tractor"
    t.float "Combine_Harvestor"
    t.float "Zero_Tillage"
    t.float "Pumpset"
    t.float "Power_Tiller"
    t.float "Manually_Operated_Tools"
    t.float "Thresher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animal_husbandry4s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Cow"
    t.float "Buffalo"
    t.float "Pig"
    t.float "Sheep"
    t.float "Goat"
    t.float "Poultry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animal_husbandry5s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Fish_Production_2014"
    t.float "Fish_Seeds_2014"
    t.float "Fish_Production_2015"
    t.float "Fish_Seeds_2015"
    t.float "Fish_Production_2016"
    t.float "Fish_Seeds_2016"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.float "Area"
    t.float "Production"
    t.float "Productivity"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity10s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Mango_Area"
    t.float "Mango_Production"
    t.float "Guava_Area"
    t.float "Guava_Production"
    t.float "Litchi_Area"
    t.float "Litchi_Production"
    t.float "Banana_Area"
    t.float "Banana_Production"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity11s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Potato_Area"
    t.float "Potato_Production"
    t.float "Onion_Area"
    t.float "Onion_Production"
    t.float "Cauliflower_Area"
    t.float "Cauliflower_Production"
    t.float "Brinjal_Area"
    t.float "Brinjal_Production"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity12s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Area"
    t.float "Production"
    t.float "Yield"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity7s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Area"
    t.float "Production"
    t.float "Productivity"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity8s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Area"
    t.float "Production"
    t.float "Productivity"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity9s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Area"
    t.float "Production"
    t.float "Productivity"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rainfalls", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "WinterRain"
    t.float "HotWeatherRain"
    t.float "SouthWestMonsoonRain"
    t.float "NorthWestMonsoonRain"
    t.float "TotalRainfall"
    t.integer "year", null: false
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
