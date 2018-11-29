class CreateBankingInfrastructure1s < ActiveRecord::Migration[5.2]
  def change
    create_table :banking_infrastructure1s do |t|
      t.string :Years_End_March
      t.float :Total
      t.float :Growth_Rate
      t.float :Percentage_distribution_of_Rural_branches
      t.float :Percentage_distribution_of_Semiurban_Branches
      t.float :Percentage_distribution_of_Urban_branches

      t.timestamps
    end
  end
end
