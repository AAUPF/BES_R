class CreateEducationArtCulture1s < ActiveRecord::Migration[5.2]
  def change
    create_table :education_art_culture1s do |t|
      t.string :Year
      t.float :Male
      t.float :Female
      t.float :Persons
      t.string :Indicator
      t.string :Indicator1

      t.timestamps
    end
  end
end
