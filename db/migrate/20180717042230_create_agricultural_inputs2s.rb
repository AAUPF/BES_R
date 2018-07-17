class CreateAgriculturalInputs2s < ActiveRecord::Migration[5.2]
  def change
    create_table :agricultural_inputs2s do |t|
      t.integer :Year
      t.float :Type_of_Fertilizer
      t.float :Urea
      t.float :DAP
      t.float :SSP
      t.float :MOP
      t.float :Ammonium_Sulphate
      t.float :Complex
      t.float :Sub_Total
      t.float :N
      t.float :P
      t.float :K
      t.float :Total_NPK
      t.float :Grand_Total
      t.float :Consumption_of_Fertilizer

      t.timestamps
    end
  end
end
