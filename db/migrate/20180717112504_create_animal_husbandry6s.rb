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

      t.timestamps
    end
  end
end
