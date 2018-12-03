class CreateDrinkingWaterSupplyAndSanitation3s < ActiveRecord::Migration[5.2]
  def change
    create_table :drinking_water_supply_and_sanitation3s do |t|
      t.string :Year
      t.float :Outlay
      t.float :Expenditure
      t.float :Outlay_as_Percent_of_Expenditure

      t.timestamps
    end
  end
end
