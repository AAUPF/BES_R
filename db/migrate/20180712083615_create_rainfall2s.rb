class CreateRainfall2s < ActiveRecord::Migration[5.2]
  def change
    create_table :rainfall2s do |t|
      t.string :Districts
      t.float :Winter_Rain
      t.float :Hot_Weather_Rain
      t.float :South_West_Monsoon
      t.float :North_West_Monsoon
      t.float :Total
      t.integer :Year

      t.timestamps
    end
  end
end
