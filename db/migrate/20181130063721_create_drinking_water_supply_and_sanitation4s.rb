class CreateDrinkingWaterSupplyAndSanitation4s < ActiveRecord::Migration[5.2]
  def change
    create_table :drinking_water_supply_and_sanitation4s do |t|
      t.string :Sector
      t.float :Target
      t.float :Achievement
      t.float :Achievement_Percentage
      t.string :Year

      t.timestamps
    end
  end
end
