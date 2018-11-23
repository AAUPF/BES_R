class CreateLevelOfUrbanisation4s < ActiveRecord::Migration[5.2]
  def change
    create_table :level_of_urbanisation4s do |t|
      t.string :City_Size
      t.float :Households_with_tap_water_within_premises
      t.float :Households_with_access_to_piped_sewer_connected_to_latrines
      t.float :Households_connected_to_covered_drainage

      t.timestamps
    end
  end
end
