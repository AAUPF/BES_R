class CreateBankingInfrastructure4s < ActiveRecord::Migration[5.2]
  def change
    create_table :banking_infrastructure4s do |t|
      t.string :RRB_Branch
      t.float :Rural
      t.float :Semi_Urban
      t.float :Urban
      t.float :Total

      t.timestamps
    end
  end
end
