class CreateAnnualSurvey2s < ActiveRecord::Migration[5.2]
  def change
    create_table :annual_survey2s do |t|
      t.string :State
      t.float :Cotribution
      t.string :Year

      t.timestamps
    end
  end
end
