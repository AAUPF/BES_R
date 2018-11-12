class CreateGeneration1s < ActiveRecord::Migration[5.2]
  def change
    create_table :generation1s do |t|
      t.string :Sector
      t.float :Thermal_Coal
      t.float :Thermal_Gas
      t.float :Thermal_Diesel
      t.float :Thermal_Total
      t.float :Nuclear
      t.float :Hydro_Renewable
      t.float :RES_MNRE
      t.float :Grand_Total

      t.timestamps
    end
  end
end
