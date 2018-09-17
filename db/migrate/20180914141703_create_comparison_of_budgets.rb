class CreateComparisonOfBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :comparison_of_budgets do |t|
      t.string :Sector
      t.float :'2016-17'
      t.float :'2017-18_BE'
      t.timestamps
    end
  end
end
