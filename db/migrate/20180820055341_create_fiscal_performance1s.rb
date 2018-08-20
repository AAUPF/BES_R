class CreateFiscalPerformance1s < ActiveRecord::Migration[5.2]
  def change
    create_table :fiscal_performance1s do |t|
      t.string :State
      t.float :Revenue_Deficit_GFD_Percentage
      t.float :Capital_Outlay_GFD_Percentage
      t.float :Non_Dev_Exp_Agg_Disbursements_Percentage
      t.float :Non_Dev_Exp_Revenue_Receipts_Percentage
      t.float :Interest_Payments_Revenue_Exp_Percentage
      t.float :State_Own_Revenue_Revenue_Exp_Percentage
      t.float :Gross_Transfers_Aggregate_Disbursements_Percentage
      t.float :Debt_Servicing_Gross_Transfers_Percentage
      t.string :Year

      t.timestamps
    end
  end
end
