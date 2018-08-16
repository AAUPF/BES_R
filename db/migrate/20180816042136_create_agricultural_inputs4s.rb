class CreateAgriculturalInputs4s < ActiveRecord::Migration[5.2]
  def change
    create_table :agricultural_inputs4s do |t|
      t.string :Districts
      t.float :Urea
      t.float :DAP
      t.float :SSP
      t.float :MOP
      t.float :Ammonium_Sulphate
      t.float :Complex
      t.float :Total
      t.float :N
      t.float :P
      t.float :K
      t.float :Total_NPK
      t.float :Grand_Total
      t.integer :Year
      t.float :Percentage_Urea
      t.float :Percentage_DAP
      t.float :Percentage_SSP
      t.float :Percentage_MOP
      t.float :Percentage_Ammonium_Sulphate
      t.float :Percentage_Complex
      t.float :Percentage_Total_NPK

      t.timestamps
    end
  end
end
