class CreateTourism1s < ActiveRecord::Migration[5.2]
  def change
    create_table :tourism1s do |t|
      t.string :Year
      t.float :Budget_Estimate
      t.float :Expenditure
      t.float :Expenditure_as_percentage_of_Budget

      t.timestamps
    end
  end
end
