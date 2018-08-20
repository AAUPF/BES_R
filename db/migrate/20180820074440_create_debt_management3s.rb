class CreateDebtManagement3s < ActiveRecord::Migration[5.2]
  def change
    create_table :debt_management3s do |t|
      t.string :Public_Debt_Repayment_Liabilities
      t.float :Amounts
      t.string :Year

      t.timestamps
    end
  end
end
