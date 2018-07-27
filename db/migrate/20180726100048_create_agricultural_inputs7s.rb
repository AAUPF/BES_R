class CreateAgriculturalInputs7s < ActiveRecord::Migration[5.2]
  def change
    create_table :agricultural_inputs7s do |t|
      t.string :Districts
      t.float :Tractor
      t.float :Combine_Harvestor
      t.float :Zero_Tillage
      t.float :Pumpset
      t.float :Power_Tiller
      t.float :Manually_Operated_Tools
      t.float :Thresher
      t.integer :Year
      t.string :Tractor_Colour
      t.string :Combine_Harvestor_Colour
      t.string :Zero_Tillage_Colour
      t.string :Pumpset_Colour
      t.string :Power_Tiller_Colour
      t.string :Manually_Operated_Tools_Colour
      t.string :Thresher_Colour

      t.timestamps
    end
  end
end
