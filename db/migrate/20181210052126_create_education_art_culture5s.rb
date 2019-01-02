class CreateEducationArtCulture5s < ActiveRecord::Migration[5.2]
  def change
    create_table :education_art_culture5s do |t|
      t.string :Year
      t.float :Primary
      t.float :Secondary
      t.float :Higher
      t.float :Total
      t.float :Total_Budget
      t.float :Social_Services

      t.timestamps
    end
  end
end
