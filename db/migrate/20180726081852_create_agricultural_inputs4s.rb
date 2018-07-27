class CreateAgriculturalInputs4s < ActiveRecord::Migration[5.2]
  def change
    create_table :agricultural_inputs4s do |t|
      t.string :Districts
      t.integer :Year
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
      t.string :Urea_Colour
      t.string :DAP_Colour
      t.string :SSP_Colour
      t.string :MOP_Colour
      t.string :Ammonium_Sulphate_Colour
      t.string :Complex_Colour
      t.string :Total_Colour
      t.string :N_Colour
      t.string :P_Colour
      t.string :K_Colour
      t.string :Total_NPK_Colour
      t.string :Grand_Total_Colour

      t.timestamps
    end
  end
end
