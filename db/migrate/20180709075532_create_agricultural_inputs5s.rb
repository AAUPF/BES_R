class CreateAgriculturalInputs5s < ActiveRecord::Migration[5.2]
  def change
    create_table :agricultural_inputs5s do |t|
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

      t.timestamps
    end
  end
end
