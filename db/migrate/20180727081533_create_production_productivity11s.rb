class CreateProductionProductivity11s < ActiveRecord::Migration[5.2]
  def change
    create_table :production_productivity11s do |t|
      t.string :Districts
      t.float :Potato_Area
      t.float :Potato_Production
      t.float :Onion_Area
      t.float :Onion_Production
      t.float :Cauliflower_Area
      t.float :Cauliflower_Production
      t.float :Brinjal_Area
      t.float :Brinjal_Production
      t.integer :Year
      t.string :Potato_Area_Colour
      t.string :Potato_Production_Colour
      t.string :Onion_Area_Colour
      t.string :Onion_Production_Colour
      t.string :Cauliflower_Area_Colour
      t.string :Cauliflower_Production_Colour
      t.string :Brinjal_Area_Colour
      t.string :Brinjal_Production_Colour

      t.timestamps
    end
  end
end
