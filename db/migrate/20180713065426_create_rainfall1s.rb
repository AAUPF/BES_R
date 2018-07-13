class CreateRainfall1s < ActiveRecord::Migration[5.2]
  def change
    create_table :rainfall1s do |t|
      t.float :Winter_Rain
      t.float :Hot_Weather_Rain
      t.float :Southwest_Monsoon
      t.float :Northwest_Monsoon
      t.float :Total
      t.integer :Year

      t.timestamps
    end
  end
end
