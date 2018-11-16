class CreateRuralDevelopmentProgrammes4s < ActiveRecord::Migration[5.2]
  def change
    create_table :rural_development_programmes4s do |t|
      t.string :Year
      t.float :Annual_Physical_Target
      t.float :Total_Houses_Completed
      t.float :Houses_Completed_for_SC_and_ST
      t.float :Percentage_of_Fund_Utilisation

      t.timestamps
    end
  end
end
