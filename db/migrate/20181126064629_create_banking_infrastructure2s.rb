class CreateBankingInfrastructure2s < ActiveRecord::Migration[5.2]
  def change
    create_table :banking_infrastructure2s do |t|
      t.string :States
      t.float :Number_of_Branches
      t.float :Percentage_share_in_all_India_branches
      t.float :Percentage_share_in_all_India_population

      t.timestamps
    end
  end
end
