class CreateAgriculturalInputs8s < ActiveRecord::Migration[5.2]
  def change
    create_table :agricultural_inputs8s do |t|
      t.string :Districts
      t.float :Tractor
      t.float :Combine_Harvestor
      t.float :Zero_Tillage
      t.float :Pumpset
      t.float :Power_Tiller
      t.float :Manually_Operated_Tools
      t.float :Thresher

      t.timestamps
    end
  end
end
