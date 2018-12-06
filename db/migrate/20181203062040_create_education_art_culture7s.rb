class CreateEducationArtCulture7s < ActiveRecord::Migration[5.2]
  def change
    create_table :education_art_culture7s do |t|
      t.string :Programmes
      t.float :APPROVED_AWP_and_B
      t.float :Fund_Released_by_GOI
      t.float :Fund_Released_by_GOB
      t.float :Total_Fund_Released
      t.float :Total_Expenditure
      t.float :Expenditure_as_Percentage_of_AWP_and_B
      t.string :Year

      t.timestamps
    end
  end
end
