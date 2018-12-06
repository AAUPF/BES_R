class CreateEducationArtCulture4s < ActiveRecord::Migration[5.2]
  def change
    create_table :education_art_culture4s do |t|
      t.string :Year
      t.float :Girls
      t.float :Boys
      t.float :Combined
      t.string :Indicator
      t.string :Indicator1

      t.timestamps
    end
  end
end
