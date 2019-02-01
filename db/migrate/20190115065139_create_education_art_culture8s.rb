class CreateEducationArtCulture8s < ActiveRecord::Migration[5.2]
  def change
    create_table :education_art_culture8s do |t|
      t.string :Year
      t.string :Type_of_School
      t.float :Reading_Std_II_Level_Textn_in_Bihar
      t.float :Reading_Std_II_Level_Textn_in_India
      t.float :Simple_Subtraction_Bihar
      t.float :Simple_Subtraction_India
      t.string :Indicators

      t.timestamps
    end
  end
end
