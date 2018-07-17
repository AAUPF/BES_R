class CreateAnimalHusbandry1s < ActiveRecord::Migration[5.2]
  def change
    create_table :animal_husbandry1s do |t|
      t.integer :Year
      t.float :Cattle
      t.float :Males_over_3_years
      t.float :Females_over_3_years
      t.float :Young_stock
      t.float :Buffalo
      t.float :Males_over_3_years
      t.float :Females_over_3_years
      t.float :Young_stock
      t.float :Sheep
      t.float :Goats
      t.float :Pigs
      t.float :Horses_Ponies
      t.float :Others
      t.float :Total_Livestock
      t.float :Total_Poultry

      t.timestamps
    end
  end
end
