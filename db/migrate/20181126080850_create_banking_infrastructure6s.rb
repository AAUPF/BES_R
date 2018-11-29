class CreateBankingInfrastructure6s < ActiveRecord::Migration[5.2]
  def change
    create_table :banking_infrastructure6s do |t|
      t.string :State
      t.float :Shelters_Sanctioned_Planned
      t.float :Officers
      t.float :Clerks
      t.float :Sub_ordinates
      t.float :Total
      t.float :Number_of_Female_Employees
      t.float :Percentage_of_Officers
      t.float :Percentage_of_Clerks
      t.float :Percentage_of_Sub_ordinates
      t.float :Total_Percentage
      t.float :Percentage_of_Female_Employees

      t.timestamps
    end
  end
end
