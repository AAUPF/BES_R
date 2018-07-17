class CreateAgriculturalInputs3s < ActiveRecord::Migration[5.2]
  def change
    create_table :agricultural_inputs3s do |t|
      t.integer :Year
      t.float :Tractor
      t.float :Combine_Harvestors
      t.float :Zero_Tillage
      t.float :Pumpsets
      t.float :Power_Tiller
      t.float :Manually_operated_tools_implements
      t.float :Threshers
      t.float :Total

      t.timestamps
    end
  end
end
