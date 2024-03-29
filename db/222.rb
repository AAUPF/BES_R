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

ActiveRecord::Schema.define(version: 2018_08_16_070151) do

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
    t.float "Percentage_Target"
    t.float "Percentage_Achievement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agricultural_inputs1_part1s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.string "Crops"
    t.string "Type_Crops"
    t.float "Paddy"
    t.float "Maize"
    t.float "Urad"
    t.float "Arhar"
    t.float "Moong"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agricultural_inputs1_part2s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.string "Crops"
    t.string "Type_Crops"
    t.float "Wheat"
    t.float "Maize"
    t.float "Arhar"
    t.float "Gram"
    t.float "Pea"
    t.float "Masoor"
    t.float "Rapeseed_Mustard"
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
    t.float "Percentage_Urea"
    t.float "Percentage_DAP"
    t.float "Percentage_SSP"
    t.float "Percentage_MOP"
    t.float "Percentage_Ammonium_Sulphate"
    t.float "Percentage_Complex"
    t.float "Percentage_Total_NPK"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agricultural_inputs5s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Target_Physical"
    t.float "Target_Financial"
    t.float "Achievement_Physical"
    t.float "Achievement_Financial"
    t.string "Target_Physical_Colour"
    t.string "Target_Financial_Colour"
    t.string "Achievement_Physical_Colour"
    t.string "Achievement_Financial_Colour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agricultural_inputs6s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Target_Physical"
    t.float "Target_Financial"
    t.float "Achievement_Physical"
    t.float "Achievement_Financial"
    t.string "Target_Physical_Colour"
    t.string "Target_Financial_Colour"
    t.string "Achievement_Physical_Colour"
    t.string "Achievement_Financial_Colour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agricultural_inputs7s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Tractor"
    t.float "Combine_Harvestor"
    t.float "Zero_Tillage"
    t.float "Pumpset"
    t.float "Power_Tiller"
    t.float "Manually_Operated_Tools"
    t.float "Thresher"
    t.integer "Year"
    t.string "Tractor_Colour"
    t.string "Combine_Harvestor_Colour"
    t.string "Zero_Tillage_Colour"
    t.string "Pumpset_Colour"
    t.string "Power_Tiller_Colour"
    t.string "Manually_Operated_Tools_Colour"
    t.string "Thresher_Colour"
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
    t.float "Animals_Treated"
    t.float "Immunization"
    t.float "Artificial_Insemination"
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
    t.float "Percentage_Cow"
    t.float "Percentage_Buffalo"
    t.float "Percentage_Pig"
    t.float "Percentage_Sheep"
    t.float "Percentage_Goat"
    t.float "Percentage_Poultry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animal_husbandry5s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Fish_Production"
    t.float "Fish_Seeds"
    t.integer "Year"
    t.string "Fish_Production_Colour"
    t.string "Fish_Seeds_Colour"
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
    t.float "Year"
    t.float "Percentage_Crossbred_Cow"
    t.float "Percentage_Local_Cow"
    t.float "Percentage_Total_Cow"
    t.float "Percentage_Buffalo"
    t.float "Percentage_Total_Cow_Buffalo"
    t.float "Percentage_Goat"
    t.float "Percentage_Total_Production"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "annual_rainfalls", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "January"
    t.float "February"
    t.float "March"
    t.float "April"
    t.float "May"
    t.float "June"
    t.float "July"
    t.float "August"
    t.float "September"
    t.float "October"
    t.float "November"
    t.float "December"
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

  create_table "health10s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Antigenname"
    t.float "Target"
    t.float "Achievement"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health11s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Diseases"
    t.float "Number_of_Patients"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health12s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "NRHM"
    t.float "Fund_Disbursed"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health13s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Posts"
    t.float "No_of_Sanctioned_Posts"
    t.float "Working"
    t.float "Percentage_of_Vacant_Post"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health14s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.float "Budget_for_ICDS_Bihar"
    t.float "Funds_Released_by_GOI"
    t.float "Expenditure"
    t.float "Fund_Released_as_Percentage_of_Budget"
    t.float "Expenditure_as_Percentage_of_Fund_Released"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health15s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "District_Hospital"
    t.float "Referral_Hospital"
    t.float "SDH"
    t.float "PHC"
    t.float "Health_SubCentre"
    t.float "APHC"
    t.float "DH_RH_SDH_PHC_HSC_APHC"
    t.float "Population_Health_Institution"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health16s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Regular_Post_sanctioned"
    t.float "Contractual_Post_sanctioned"
    t.float "Regular_Doctor_Employed"
    t.float "Contractual_Doctor_Employed"
    t.integer "Year"
    t.float "Number_of_doctors_per_lakh_population"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health17s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Regular_Post_sanctioned"
    t.float "Contractual_Post_sanctioned"
    t.float "Regular_Grade_A_Nurses_Employed"
    t.float "Contractual_Grade_A_Nurses_Employed"
    t.float "Number_of_Grade_A_Nurses_per_lakh_population"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health18s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Regular_Post_sanctioned"
    t.float "Contractual_Post_sanctioned"
    t.float "Regular_ANM_Employed"
    t.float "Contractual_ANM_Employed"
    t.float "Number_of_ANM_per_lakh_population"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health19s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Target"
    t.float "Selection"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health1s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.float "Total_Expense_on_Social_Services_India"
    t.float "Total_Expense_on_Social_Services_Bihar"
    t.float "Total_Expense_India"
    t.float "Total_Expense_Bihar"
    t.float "Percentage_share_of_Social_Services_in_Total_Expenditure_India"
    t.float "Percentage_share_of_Social_Services_in_Total_Expenditure_Bihar"
    t.float "Per_Capita_Expenditure_on_Social_Services_India"
    t.float "Per_Capita_Expenditure_on_Social_Services_Bihar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health20s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Institutional_Deliveries"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health21s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Acute_Diarrheal_Disease"
    t.float "Bacillary_Dysentery"
    t.float "Viral_Hepatitis"
    t.float "Enteric_Fever"
    t.float "Malaria"
    t.float "PUO"
    t.float "Acute_Respiratory_Infection"
    t.float "Pneumonia"
    t.float "Dogbite"
    t.float "Other_State_Specific_Disease"
    t.float "Unusual_Syndromes_Not_Captured"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health22s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "NRHM_Total"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health2s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Region"
    t.float "Male"
    t.float "Female"
    t.float "Total"
    t.string "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health3s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.string "Area"
    t.float "Crude_Birth_Rate"
    t.float "Infant_Mortality_Rate"
    t.float "Child_Mortality_Rate"
    t.float "Under_Five_Mortality_Rate"
    t.float "Neo_Natal_Mortality_Rate"
    t.float "Total_Fertility_Rate"
    t.float "Total_Marital_Fertility_Rate"
    t.string "Region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health4s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.float "Number_of_patients_visiting_government_hospitals_per_month"
    t.float "Percentage_growth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health5s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.float "District_Hospital"
    t.float "Referral_Hospital"
    t.float "Sub_Divisional_Hospital"
    t.float "PHC"
    t.float "Sub_Centre"
    t.float "APHC"
    t.float "Total_Health_Centre"
    t.float "Health_centres_per_lakh_of_population"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health6s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Average_number_of_Outpatient_visits_per_day"
    t.float "Inpatient_Bed_Occupancy_Rate"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health7s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Name_of_the_Post"
    t.float "Regular_Total_Sanctioned_Posts"
    t.float "Regular_Working"
    t.float "Contractual_Sanctioned_Posts"
    t.float "Contractual_Working"
    t.integer "Year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health8s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Year"
    t.float "Institutional_Delivery"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "health9s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "State"
    t.float "Percentage_of_children_fully_immunized_NFHS_3_2005_06"
    t.float "Percentage_of_children_fully_immunized_NFHS_4_2015_16"
    t.float "Percentage_Point_Increase"
    t.float "Rank_by_percentage_increase"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hhs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "irrigation1s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "TypeofIrrigationPotential"
    t.float "Ultimate_Potential"
    t.float "Created_Potential"
    t.float "Utilised_Potential"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "irrigation2s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Name_of_Scheme"
    t.float "Created_Irrigation_Potential"
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

  create_table "irrigation4s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Status"
    t.float "Management_of_irrigation_System_Transferred"
    t.float "Societies_ready_for_transfer_of_system"
    t.float "Applied_for_Registration"
    t.float "Under_the_process_of_motivation"
    t.float "Total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "irrigation5s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Irrigation_Sources"
    t.float "Ultimate_Potential"
    t.float "Created_Potential"
    t.float "Utilized_Potential"
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
    t.float "Percentage_Geographical_area"
    t.float "Percentage_Forest"
    t.float "Percentage_Barren_unculturable_land"
    t.float "Percentage_Non_Agriculture_Land_area"
    t.float "Percentage_Non_Agriculture_Perennial_Water_Area"
    t.float "Percentage_Culturable_Waste_Land"
    t.float "Percentage_Permanent_Pastures"
    t.float "Percentage_Tree_Crops"
    t.float "Percentage_Fallow_land"
    t.float "Percentage_Current_Fallow"
    t.float "Percentage_Total_Uncultivable_Land"
    t.float "Percentage_Net_Area_Sown"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newrices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Area"
    t.float "Production"
    t.float "Productivity"
    t.float "Year"
    t.float "Percentage_Area"
    t.float "Percentage_Production"
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
    t.float "Area"
    t.float "Mango_Area"
    t.float "Mango_Production"
    t.float "Guava_Area"
    t.float "Guava_Production"
    t.float "Litchi_Area"
    t.float "Litchi_Production"
    t.float "Banana_Area"
    t.float "Banana_Production"
    t.integer "Year"
    t.float "Percentage_Mango_Area"
    t.float "Percentage_Mango_Production"
    t.float "Percentage_Guava_Area"
    t.float "Percentage_Guava_Production"
    t.float "Percentage_Litchi_Area"
    t.float "Percentage_Litchi_Production"
    t.float "Percentage_Banana_Area"
    t.float "Percentage_Banana_Production"
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
    t.float "Percentage_Potato_Area"
    t.float "Percentage_Potato_Production"
    t.float "Percentage_Onion_Area"
    t.float "Percentage_Onion_Production"
    t.float "Percentage_Cauliflower_Area"
    t.float "Percentage_Cauliflower_Production"
    t.float "Percentage_Brinjal_Area"
    t.float "Percentage_Brinjal_Production"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity12s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Area"
    t.float "Production"
    t.float "Yield"
    t.integer "Year"
    t.float "Percentage_Sugarcane_Area"
    t.float "Percentage_Sugarcane_Production"
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
    t.float "Area"
    t.string "Districts"
    t.float "Production"
    t.float "Productivity"
    t.float "Year"
    t.float "Percentage_Area"
    t.float "Percentage_Production"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity8s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Area"
    t.float "Production"
    t.float "Productivity"
    t.integer "Year"
    t.float "Percentage_Area"
    t.float "Percentage_Production"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "production_productivity9s", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Districts"
    t.float "Area"
    t.float "Production"
    t.float "Productivity"
    t.integer "Year"
    t.float "Percentage_Area"
    t.float "Percentage_Production"
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

  create_table "testies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.float "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.float "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
