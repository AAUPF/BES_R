class CreateRuralDevelopmentProgrammes9s < ActiveRecord::Migration[5.2]
  def change
    create_table :rural_development_programmes9s do |t|
      t.string :Districts
      t.float :Number_of_Dealers
      t.float :Dealers_belonging_to_SC_or_ST
      t.float :Dealers_belonging_to_BC_or_EBC
      t.float :Dealers_belonging_to_Minority
      t.float :Dealers_belonging_to_Women
      t.float :Dealers_belonging_to_Women_or_Other_SHG
      t.float :Dealers_from_Helper_Samiti_or_PACS_or_Samiti_of_ExArmy_Personnel
      t.float :Dealers_belonging_to_General
      t.float :Total

      t.timestamps
    end
  end
end
