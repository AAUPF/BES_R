class CreateAnimalHusbandry2s < ActiveRecord::Migration[5.2]
  def change
    create_table :animal_husbandry2s do |t|
      t.integer :Year
      t.float :Milk_lakh_tonnes
      t.float :Egg_crore
      t.float :Wool_lakh_kgs
      t.float :Meat_lakh_tonnes
      t.float :Fish_lakh_tonnes

      t.timestamps
    end
  end
end
