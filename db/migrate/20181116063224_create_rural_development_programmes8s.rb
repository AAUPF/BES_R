class CreateRuralDevelopmentProgrammes8s < ActiveRecord::Migration[5.2]
  def change
    create_table :rural_development_programmes8s do |t|
      t.string :Districts
      t.float :Fund_available
      t.float :Fund_utilised
      t.float :Percentage_of_utilisation
      t.string :Year

      t.timestamps
    end
  end
end
