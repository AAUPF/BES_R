class CreateBankingInfrastructure5s < ActiveRecord::Migration[5.2]
  def change
    create_table :banking_infrastructure5s do |t|
      t.string :State
      t.float :No_of_Branches
      t.float :No_of_Current_Accounts
      t.float :Current_Amount
      t.float :No_of_Savings_Accounts
      t.float :Savings_Amount
      t.float :No_of_Term_Accounts
      t.float :Term_Amount
      t.float :No_of_Total_Accounts
      t.float :Total_Amount

      t.timestamps
    end
  end
end
