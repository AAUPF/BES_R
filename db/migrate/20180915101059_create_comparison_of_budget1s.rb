class CreateComparisonOfBudget1s < ActiveRecord::Migration[5.2]
  def change
    create_table :comparison_of_budget1s do |t|
      t.string :Sector
      t.float :'2016-17'
      t.float :'2017-18_BE'
      t.string :Indicator
      t.string :Sub_sector

      t.timestamps
    end
  end
end
