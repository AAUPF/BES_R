class CreateHealth14s < ActiveRecord::Migration[5.2]
  def change
    create_table :health14s do |t|
      t.integer :Year
      t.float :Budget_for_ICDS_Bihar
      t.float :Funds_Released_by_GOI
      t.float :Expenditure
      t.float :Fund_Released_as_Percentage_of_Budget
      t.float :Expenditure_as_Percentage_of_Fund_Released

      t.timestamps
    end
  end
end
