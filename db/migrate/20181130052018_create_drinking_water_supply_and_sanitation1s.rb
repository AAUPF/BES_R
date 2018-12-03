class CreateDrinkingWaterSupplyAndSanitation1s < ActiveRecord::Migration[5.2]
  def change
    create_table :drinking_water_supply_and_sanitation1s do |t|
      t.string :Year
      t.float :Handpumps_Installed
      t.float :Slipped_back_Habitations_or_Water_quality_problems_covered
      t.float :IHHL_constructed_under_APL
      t.float :IHHL_constructed_under_BPL
      t.float :Total_IHHL_constructed

      t.timestamps
    end
  end
end
