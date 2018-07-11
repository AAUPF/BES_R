class CreateAgriculturalInputs7s < ActiveRecord::Migration[5.2]
  def change
    create_table :agricultural_inputs7s do |t|
      t.string :Districts
      t.float :Urea
      t.float :Tractor
      t.float :Combine_Harvestor
      t.float :Zero_Tillage
      t.float :Pumpset
      t.float :Power_Tiller
      t.float :Manually_Operated_Tools
      t.float :Thresher
      t.integer :Year

      t.timestamps
    end
  end
end
