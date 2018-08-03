class CreateAgriculturalInputs1Part1s < ActiveRecord::Migration[5.2]
  def change
    create_table :agricultural_inputs1_part1s do |t|
      t.integer :Year
      t.string :Crops
      t.string :Type_Crops
      t.float :Paddy
      t.float :Maize
      t.float :Urad
      t.float :Arhar
      t.float :Moong

      t.timestamps
    end
  end
end
