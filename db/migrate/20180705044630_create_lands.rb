class CreateLands < ActiveRecord::Migration[5.2]
  def change
    create_table :lands do |t|
      t.string :Districts
      t.float :Geographical_Area
      t.float :Forest
      t.float :Barren_and_Unculturable_land
      t.float :Non_Agriculture_Land_Area
      t.float :Non_Agriculture_Perennial
      t.float :Non_Agriculture_Temporary
      t.float :Culturable_Waste_Land
      t.timestamps
    end
  end
end
