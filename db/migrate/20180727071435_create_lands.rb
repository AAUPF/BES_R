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
      t.string :Forest_Colour
      t.string :Barren_unculturable_land_Colour
      t.string :Non_Agriculture_Land_area_Colour
      t.string :Non_Agriculture_Perennial_Water_Area_Colour
      t.string :Non_Agriculture_Temporary_Water_Area_Colour
      t.string :Culturable_Waste_Land_Colour
      t.string :Permanent_Pastures_Colour
      t.string :Tree_Crops_Colour
      t.string :_ColourFallow_land
      t.string :Current_Fallow_Colour
      t.string :Total_Uncultivable_Land_Colour
      t.string :Net_Area_Sown_Colour
      t.string :Gross_Crop_Area_Colour
      t.string :Cropping_Intensity_Colour

      t.timestamps
    end
  end
end
