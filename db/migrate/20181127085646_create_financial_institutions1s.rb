class CreateFinancialInstitutions1s < ActiveRecord::Migration[5.2]
  def change
    create_table :financial_institutions1s do |t|
      t.string :Year
      t.float :Crop_Loan_Refinance
      t.float :Investment_Credit_Refinancing
      t.float :RIDF_plus_WIF_plus_FPF_Loan_sanctioned
      t.float :Total_Financial_Support

      t.timestamps
    end
  end
end
