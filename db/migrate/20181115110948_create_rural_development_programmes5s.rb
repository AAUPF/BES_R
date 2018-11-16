class CreateRuralDevelopmentProgrammes5s < ActiveRecord::Migration[5.2]
  def change
    create_table :rural_development_programmes5s do |t|
      t.string :Social_Background_of_PDS_Dealers
      t.float :No_of_PDS_Outlets
      t.float :Percentage_Share
      t.string :Year

      t.timestamps
    end
  end
end
