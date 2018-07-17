class CreateAnimalHusbandry5s < ActiveRecord::Migration[5.2]
  def change
    create_table :animal_husbandry5s do |t|
      t.string :Districts
      t.float :Fish_Production
      t.float :Fish_Seeds
      t.integer :Year

      t.timestamps
    end
  end
end
