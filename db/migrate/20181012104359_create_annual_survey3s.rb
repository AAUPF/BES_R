class CreateAnnualSurvey3s < ActiveRecord::Migration[5.2]
  def change
    create_table :annual_survey3s do |t|
      t.string :Year
      t.float :Number_of_Factories_Agro_based
      t.float :Number_of_Factories_Non_Agro_based
      t.float :Total_Number_of_Factories
      t.float :Number_of_Factories_in_Operation_Agro_based
      t.float :Number_of_Factories_in_Operation_Non_Agro_Based
      t.float :Total_Number_of_Factories_in_Operation
      t.float :Percentage_of_Agro_based
      t.float :Percentage_of_Non_Agro_based
      t.float :Percentage_of_Total_Factories
      t.float :Percentage_of_Operation_Agro_based
      t.float :Percentage_of_Operation_Non_Agro_Based
      t.float :Percentage_of_Total_Factories_in_Operation
      t.string :Indicator

      t.timestamps
    end
  end
end
