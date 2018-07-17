class CreateAnimalHusbandry3s < ActiveRecord::Migration[5.2]
  def change
    create_table :animal_husbandry3s do |t|
      t.integer :Year
      t.float :Animals_Treated_in_Lakh
      t.float :Immunization_in_Lakh
      t.float :Artificial_Insemination_in_Lakh

      t.timestamps
    end
  end
end
