class CreateAnimalHusbandry4s < ActiveRecord::Migration[5.2]
  def change
    create_table :animal_husbandry4s do |t|
      t.string :Districts
      t.float :Cow
      t.float :Buffalo
      t.float :Pig
      t.float :Sheep
      t.float :Goat
      t.float :Poultry
      t.string :Cow_Colour
      t.string :Buffalo_Colour
      t.string :Pig_Colour
      t.string :Sheep_Colour
      t.string :Goat_Colour
      t.string :Poultry_Colour

      t.timestamps
    end
  end
end
