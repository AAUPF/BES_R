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

ActiveRecord::Schema.define(version: 2018_07_24_065643) do

  create_table "agricultural_credit1s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.float "Commercial_Bank_Target"
    t.float "Commercial_Bank_Achievement"
    t.float "RRBs_Target"
    t.float "RRBs_Achievement"
    t.float "CCBs_Target"
    t.float "CCBs_Achievement"
    t.float "Total_Target"
    t.float "Total_Achievement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agricultural_credit2s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Target"
    t.float "Achievement"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agricultural_inputs2s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.string "Type_of_Fertilizer"
    t.float "Urea"
    t.float "DAP"
    t.float "SSP"
    t.float "MOP"
    t.float "Ammonium_Sulphate"
    t.float "Complex"
    t.float "Sub_Total"
    t.float "N"
    t.float "P"
    t.float "K"
    t.float "Total_NPK"
    t.float "Grand_Total"
    t.float "Consumption_of_Fertilizer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agricultural_inputs3s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.float "Tractor"
    t.float "Combine_Harvestors"
    t.float "Zero_Tillage"
    t.float "Pumpsets"
    t.float "Power_Tiller"
    t.float "Manually_operated_tools_implements"
    t.float "Threshers"
    t.float "Total"
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

  create_table "animal_husbandry1s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.float "Cattle"
    t.float "Males_over_3_years"
    t.float "Females_over_3_years"
    t.float "Young_stock"
    t.float "Buffalo"
    t.float "Sheep"
    t.float "Goats"
    t.float "Pigs"
    t.float "Horses_Ponies"
    t.float "Others"
    t.float "Total_Livestock"
    t.float "Total_Poultry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animal_husbandry2s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.float "Milk_lakh_tonnes"
    t.float "Egg_crore"
    t.float "Wool_lakh_kgs"
    t.float "Meat_lakh_tonnes"
    t.float "Fish_lakh_tonnes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animal_husbandry3s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.float "Animals_Treated_in_Lakh"
    t.float "Immunization_in_Lakh"
    t.float "Artificial_Insemination_in_Lakh"
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
    t.float "Fish_Production"
    t.float "Fish_Seeds"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animal_husbandry6s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Crossbred_Cow"
    t.float "Local_Cow"
    t.float "Total_Cow"
    t.float "Buffalo"
    t.float "Total_Cow_Buffalo"
    t.float "Goat"
    t.float "Total_Production"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cropping_patterns", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.float "Food_grains"
    t.float "Cereals"
    t.float "Pulses"
    t.float "Oil_seeds"
    t.float "Fibre_Crops"
    t.float "Sugarcane"
    t.float "Total_Area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hhs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "irrigation3s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.float "Created_Irrigation_Potential"
    t.float "Kharif_Target"
    t.float "Kharif_Irrigation"
    t.float "Rabi_Target"
    t.float "Rabi_Irrigation"
    t.float "Hot_Weather_Target"
    t.float "Hot_Weather_Irrigation"
    t.float "Total_Utilised_Irrigation_Potential"
    t.float "Utilisation_Efficiency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "irrigation6s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.float "Surface_Canal"
    t.float "Tanks_including_Ahars_Pynes"
    t.float "Tubewells_Private_and_State"
    t.float "Other_Sources_Lift_Irrigation_and_Barge_Lift_Irrigation"
    t.float "Total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "land1s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.float "Geographical_Area"
    t.float "Forests"
    t.float "Barren_Unculturable_Land"
    t.float "Land_put_to_Non_agricultural_use"
    t.float "Land_Area"
    t.float "Water_Area"
    t.float "Culturable_Waste"
    t.float "Permanent_Pastures"
    t.float "Land_under_Tree_Crops"
    t.float "Fallow_Land_excl_Current_Fallow"
    t.float "Current_Fallow"
    t.float "Total_Unculturable_Land"
    t.float "Net_Sown_Area"
    t.float "Gross_Sown_Area"
    t.float "Cropping_Intensity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lands", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Geographical_area"
    t.float "Forest"
    t.float "Barren_unculturable_land"
    t.float "Non_Agriculture_Land_area"
    t.float "Non_Agriculture_Perennial_Water_Area"
    t.float "Non_Agriculture_Temporary_Water_Area"
    t.float "Culturable_Waste_Land"
    t.float "Permanent_Pastures"
    t.float "Tree_Crops"
    t.float "Fallow_land"
    t.float "Current_Fallow"
    t.float "Total_Uncultivable_Land"
    t.float "Net_Area_Sown"
    t.float "Gross_Crop_Area"
    t.float "Cropping_Intensity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newrices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Area"
    t.float "Production"
    t.float "Productivity"
    t.integer "Year"
    t.string "Area_Colour"
    t.string "Production_Colour"
    t.string "Productivity_Colour"
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

  create_table "production_productivity1s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.float "Total_Cereals"
    t.float "Total_Rice"
    t.float "Autumn_Rice"
    t.float "Aghani_Rice"
    t.float "Summer_Rice"
    t.float "Wheat"
    t.float "Total_Maize"
    t.float "Kharif_Maize"
    t.float "Rabi_Maize"
    t.float "Summer_Maize"
    t.float "Total_Coarse_Cereals"
    t.float "Barley"
    t.float "Jowar"
    t.float "Bajra"
    t.float "Ragi"
    t.float "Small_Millets"
    t.float "Total_Pulses"
    t.float "Total_Kharif_Pulses"
    t.float "Urad"
    t.float "Bhadai_Moong"
    t.float "Kulthi"
    t.float "Ghagra"
    t.float "Other_Kharif_Pulses"
    t.float "Total_Rabi_Pulses"
    t.float "Arhar_Tur"
    t.float "Gram"
    t.float "Lentil"
    t.float "Pea"
    t.float "Khesari"
    t.float "Summer_Moong"
    t.float "Other_Rabi_Pulses"
    t.float "Total_Oilseeds"
    t.float "Castor_seed"
    t.float "Safflower_Kusum"
    t.float "Sesamum"
    t.float "Sunflower"
    t.float "Mustard"
    t.float "Linseed"
    t.float "Ground_Nut"
    t.float "Total_Fibre_Crops"
    t.float "Jute"
    t.float "Mesta"
    t.float "Sugarcane"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity2s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.float "Total_Cereals"
    t.float "Total_Rice"
    t.float "Autumn_Rice"
    t.float "Aghani_Rice"
    t.float "Summer_Rice"
    t.float "Wheat"
    t.float "Total_Maize"
    t.float "Kharif_Maize"
    t.float "Rabi_Maize"
    t.float "Summer_Maize"
    t.float "Total_Coarse_Cereals"
    t.float "Barley"
    t.float "Jowar"
    t.float "Bajra"
    t.float "Ragi"
    t.float "Small_Millets"
    t.float "Total_Pulses"
    t.float "Total_Kharif_Pulses"
    t.float "Urad"
    t.float "Bhadai_Moong"
    t.float "Kulthi"
    t.float "Ghagra"
    t.float "Other_Kharif_Pulses"
    t.float "Total_Rabi_Pulses"
    t.float "Arhar_Tur"
    t.float "Gram"
    t.float "Lentil"
    t.float "Pea"
    t.float "Khesari"
    t.float "Summer_Moong"
    t.float "Other_Rabi_Pulses"
    t.float "Total_Oilseeds"
    t.float "Castor_seed"
    t.float "Safflower_Kusum"
    t.float "Sesamum"
    t.float "Sunflower"
    t.float "Mustard"
    t.float "Linseed"
    t.float "Ground_Nut"
    t.float "Total_Fibre_Crops"
    t.float "Jute"
    t.float "Mesta"
    t.float "Sugarcane"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity4s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Fruits"
    t.float "Area"
    t.float "Production"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity5s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Vegetables"
    t.float "Area"
    t.float "Production"
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

  create_table "rainfall1s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.float "Winter_Rain"
    t.float "Hot_Weather_Rain"
    t.float "Southwest_Monsoon"
    t.float "Northwest_Monsoon"
    t.float "Total"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rainfall2s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Winter_Rain"
    t.float "Hot_Weather_Rain"
    t.float "South_West_Monsoon"
    t.float "North_West_Monsoon"
    t.float "Total"
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
