class CreateDrinkingWaterSupplyAndSanitations < ActiveRecord::Migration[5.2]
  def change
    create_table :drinking_water_supply_and_sanitations do |t|
      t.string :Contaminants
      t.string :Affected_Districts

      t.timestamps
    end
  end
end
