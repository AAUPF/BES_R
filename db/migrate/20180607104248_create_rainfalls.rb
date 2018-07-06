class CreateRainfalls < ActiveRecord::Migration[5.2]
  def change
    create_table :rainfalls do |t|
      t.string :Districts
      t.float :WinterRain_2016
      t.float :HotWeatherRain_2016
      t.float :SouthWestMonsoonRain_2016
      t.float :NorthWestMonsoonRain_2016
      t.float :TotalRainfall_2016
      t.float :WinterRain_2017
      t.float :HotWeatherRain_2017
      t.float :SouthWestMonsoonRain_2017
      t.float :Total_2017

      t.timestamps
    end
  end
end
