class CreateHealth3s < ActiveRecord::Migration[5.2]
  def change
    create_table :health3s do |t|
      t.integer :Year
      t.string :Area
      t.float :Crude_Birth_Rate
      t.float :Infant_Mortality_Rate
      t.float :Child_Mortality_Rate
      t.float :Under_Five_Mortality_Rate
      t.float :Neo_Natal_Mortality_Rate
      t.float :Total_Fertility_Rate
      t.float :Total_Marital_Fertility_Rate
      t.string :Region

      t.timestamps
    end
  end
end
