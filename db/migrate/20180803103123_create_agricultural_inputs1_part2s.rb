class CreateAgriculturalInputs1Part2s < ActiveRecord::Migration[5.2]
  def change
    create_table :agricultural_inputs1_part2s do |t|
      t.integer :Year
      t.string :Crops
      t.string :Type_Crops
      t.float :Wheat
      t.float :Maize
      t.float :Arhar
      t.float :Gram
      t.float :Pea
      t.float :Masoor
      t.float :Rapeseed_Mustard

      t.timestamps
    end
  end
end
