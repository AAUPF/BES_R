class CreateLands < ActiveRecord::Migration[5.2]
  def change
    create_table :lands do |t|
      t.string :Districts
      t.float :Geographical_area
      t.float :Forest
      t.float :Barren_unculturable_land
      t.float :Non_Agriculture_Land_area
      t.float :Non_Agriculture_Perennial_Water_Area
      t.float :Non_Agriculture_Temporary_Water_Area
      t.float :Culturable_Waste_Land
      t.float :Permanent_Pastures
      t.float :Tree_Crops
      t.float :Fallow_land
      t.float :Current_Fallow
      t.float :Total_Uncultivable_Land
      t.float :Net_Area_Sown
      t.float :Gross_Crop_Area
      t.float :Cropping_Intensity
      t.float :Percentage_Geographical_area
      t.float :Percentage_Forest
      t.float :Percentage_Barren_unculturable_land
      t.float :Percentage_Non_Agriculture_Land_area
      t.float :Percentage_Non_Agriculture_Perennial_Water_Area
      t.float :Non_Agriculture_Temporary_Water_Area
      t.float :Percentage_Culturable_Waste_Land
      t.float :Percentage_Permanent_Pastures
      t.float :Percentage_Tree_Crops
      t.float :Percentage_Fallow_land
      t.float :Percentage_Current_Fallow
      t.float :Percentage_Total_Uncultivable_Land
      t.float :Percentage_Net_Area_Sown

      t.timestamps
    end
  end
end
