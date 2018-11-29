class CreateBankingInfrastructure3s < ActiveRecord::Migration[5.2]
  def change
    create_table :banking_infrastructure3s do |t|
      t.string :State
      t.float :State_Cooperative_Banks
      t.float :District_Central_Cooperative_Banks
      t.float :Total
      t.string :Year

      t.timestamps
    end
  end
end
