class CreateAnimalHusbandry5s < ActiveRecord::Migration[5.2]
  def change
    create_table :animal_husbandry5s do |t|
      t.string :Districts
      t.float :Fish_Production_2014
      t.float :Fish_Seeds_2014
      t.float :Fish_Production_2015
      t.float :Fish_Seeds_2015
      t.float :Fish_Production_2016
      t.float :Fish_Seeds_2016

      t.timestamps
    end
  end
end
