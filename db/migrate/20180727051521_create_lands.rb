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
      t.string :Geographical_area_Colour
      t.string :Forest
      t.string :Barren_unculturable_land
      t.string :Non_Agriculture_Land_area
      t.string :Non_Agriculture_Perennial_Water_Area
      t.string :Non_Agriculture_Temporary_Water_Area
      t.string :Culturable_Waste_Land
      t.string :Permanent_Pastures
      t.string :Tree_Crops
      t.string :Fallow_land
      t.string :Current_Fallow
      t.string :Total_Uncultivable_Land
      t.string :Net_Area_Sown
      t.string :Gross_Crop_Area
      t.string :Cropping_Intensity

      t.timestamps
    end
  end
end
