class CreateProductionProductivity10s < ActiveRecord::Migration[5.2]
  def change
    create_table :production_productivity10s do |t|
      t.string :Districts
      t.float :Mango_Area
      t.float :Mango_Production
      t.float :Guava_Area
      t.float :Guava_Production
      t.float :Litchi_Area
      t.float :Litchi_Production
      t.float :Banana_Area
      t.float :Banana_Production
      t.integer :Year
      t.string :Mango_Area_Colour
      t.string :Mango_Production_Colour
      t.string :Guava_Area_Colour
      t.string :Guava_Production_Colour
      t.string :Litchi_Area_Colour
      t.string :Litchi_Production_Colour
      t.string :Banana_Area_Colour
      t.string :Banana_Production_Colour

      t.timestamps
    end
  end
end
