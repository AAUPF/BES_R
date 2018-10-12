class CreateAnnualSurvey6s < ActiveRecord::Migration[5.2]
  def change
    create_table :annual_survey6s do |t|
      t.string :Districts
      t.float :Number_of_Factories_in_Operation
      t.float :Gross_Value_of_Output_GVO_Rs_crore
      t.float :Gross_Value_Added_GVA_Rs_crore
      t.float :GVA_Percentage_Share_in_India
      t.float :GVA_as_Percentage_of_GVO
      t.float :Number_of_Persons_Engaged
      t.float :Percentage_Share_in_India
      t.float :Employment_per_Factory
      t.float :Wages_Salaries_and_Bonus_per_Person_annually_Rs

      t.timestamps
    end
  end
end
