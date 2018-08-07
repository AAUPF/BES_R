class CreateHealth1s < ActiveRecord::Migration[5.2]
  def change
    create_table :health1s do |t|
      t.integer :Year
      t.float :Total_Expense_on_Social_Services_India
      t.float :Total_Expense_on_Social_Services_Bihar
      t.float :Total_Expense_India
      t.float :Total_Expense_Bihar
      t.float :Percentage_share_of_Social_Services_in_Total_Expenditure_India
      t.float :Percentage_share_of_Social_Services_in_Total_Expenditure_Bihar
      t.float :Per_Capita_Expenditure_on_Social_Services_India
      t.float :Per_Capita_Expenditure_on_Social_Services_Bihar

      t.timestamps
    end
  end
end
