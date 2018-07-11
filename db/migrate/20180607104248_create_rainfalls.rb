class CreateRainfalls < ActiveRecord::Migration[5.2]
  def change
    create_table :rainfalls do |t|
      t.string :Districts
      t.float :WinterRain
      t.float :HotWeatherRain
      t.float :SouthWestMonsoonRain
      t.float :NorthWestMonsoonRain
      t.float :TotalRainfall
      t.timestamps
    end
  end
end
