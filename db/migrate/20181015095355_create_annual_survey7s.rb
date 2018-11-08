class CreateAnnualSurvey7s < ActiveRecord::Migration[5.2]
  def change
    create_table :annual_survey7s do |t|
      t.string :Industrial_Group
      t.float :India
      t.float :Bihar
      t.string :Indicator
      t.string :Indicator1

      t.timestamps
    end
  end
end
