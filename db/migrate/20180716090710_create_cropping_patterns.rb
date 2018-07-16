class CreateCroppingPatterns < ActiveRecord::Migration[5.2]
  def change
    create_table :cropping_patterns do |t|
      t.integer :Year
      t.float :Food_grains
      t.float :Cereals
      t.float :Pulses
      t.float :Oil_seeds
      t.float :Fibre_Crops
      t.float :Sugarcane
      t.float :Total_Area

      t.timestamps
    end
  end
end
