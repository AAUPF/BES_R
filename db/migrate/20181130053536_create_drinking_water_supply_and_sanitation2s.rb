class CreateDrinkingWaterSupplyAndSanitation2s < ActiveRecord::Migration[5.2]
  def change
    create_table :drinking_water_supply_and_sanitation2s do |t|
      t.string :Year
      t.float :Outlay
      t.float :Expenditure
      t.float :Percentage_of_Utilisation

      t.timestamps
    end
  end
end
