class CreateRailways < ActiveRecord::Migration[5.2]
  def change
    create_table :railways do |t|
      t.string :States
      t.float :Total_Rail_Route
      t.float :Total_Rail_Track
      t.float :Total_Rail_Route_Per_1000_sq_km
      t.float :Total_Rail_Route_Per_lakh_Population
      t.float :Total_Rail_Track_Per_1000_sq_km
      t.float :Total_Rail_Track_Per_lakh_Population

      t.timestamps
    end
  end
end
