class CreateAnimalHusbandry6s < ActiveRecord::Migration[5.2]
  def change
    create_table :animal_husbandry6s do |t|
      t.string :Districts
      t.float :Crossbred_Cow
      t.float :Local_Cow
      t.float :Total_Cow
      t.float :Buffalo
      t.float :Total_Cow_Buffalo
      t.float :Goat
      t.float :Total_Production
      t.integer :Year
      t.string :Crossbred_Cow_Colour
      t.string :Local_Cow_Colour
      t.string :Total_Cow_Colour
      t.string :Buffalo_Colour
      t.string :Total_Cow_Buffalo_Colour
      t.string :Goat_Colour
      t.string :Total_Production_Colour

      t.timestamps
    end
  end
end
