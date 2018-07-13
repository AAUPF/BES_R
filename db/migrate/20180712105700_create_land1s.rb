class CreateLand1s < ActiveRecord::Migration[5.2]
  def change
    create_table :land1s do |t|
      t.integer :Year
      t.float :Geographical_Area
      t.float :Forests
      t.float :Barren_Unculturable_Land
      t.float :Land_put_to_Non_agricultural_use
      t.float :Land_Area
      t.float :Water_Area
      t.float :Culturable_Waste
      t.float :Permanent_Pastures
      t.float :Land_under_Tree_Crops
      t.float :Fallow_Land_excl_Current_Fallow
      t.float :Current_Fallow
      t.float :Total_Unculturable_Land
      t.float :Net_Sown_Area
      t.float :Gross_Sown_Area
      t.float :Cropping_Intensity

      t.timestamps
    end
  end
end
