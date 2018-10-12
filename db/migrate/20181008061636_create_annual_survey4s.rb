class CreateAnnualSurvey4s < ActiveRecord::Migration[5.2]
  def change
    create_table :annual_survey4s do |t|
      t.string :Year
      t.float :India
      t.float :Bihar
      t.string :Indicator

      t.timestamps
    end
  end
end
