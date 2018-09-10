class CreateSixthEconomicCensus2s < ActiveRecord::Migration[5.2]
  def change
    create_table :sixth_economic_census2s do |t|
      t.string :District
      t.float :Number_of_Establishments_Rural
      t.float :Number_of_Establishments_Urban
      t.float :Total_Number_of_Establishments
      t.float :Percentage_Share_Establishments
      t.float :Percentage_Share_Population

      t.timestamps
    end
  end
end
