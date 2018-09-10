class CreateAnnualSurvey5s < ActiveRecord::Migration[5.2]
  def change
    create_table :annual_survey5s do |t|
      t.string :Characteristics
      t.float :India
      t.float :Bihar
      t.string :Year

      t.timestamps
    end
  end
end
