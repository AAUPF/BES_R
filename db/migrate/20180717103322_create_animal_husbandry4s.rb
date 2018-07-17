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

      t.timestamps
    end
  end
end
