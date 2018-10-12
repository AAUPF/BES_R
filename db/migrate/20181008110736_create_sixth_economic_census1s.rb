class CreateSixthEconomicCensus1s < ActiveRecord::Migration[5.2]
  def change
    create_table :sixth_economic_census1s do |t|
      t.string :Variable1
      t.string :Variable2
      t.float :Number_2005
      t.float :Number_2013
      t.float :Percentage_Increase

      t.timestamps
    end
  end
end
