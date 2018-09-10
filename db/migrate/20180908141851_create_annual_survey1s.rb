class CreateAnnualSurvey1s < ActiveRecord::Migration[5.2]
  def change
    create_table :annual_survey1s do |t|
      t.string :Sector
      t.float :Annual_Growth_Rate
      t.string :Year

      t.timestamps
    end
  end
end
