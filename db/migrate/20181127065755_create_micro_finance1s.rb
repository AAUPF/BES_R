class CreateMicroFinance1s < ActiveRecord::Migration[5.2]
  def change
    create_table :micro_finance1s do |t|
      t.string :State
      t.float :Number_of_SHGs_with_Bank_Linkage
      t.float :Savings_of_SHGs_with_Banks
      t.float :Bank_loans_disbursed_during_the_year

      t.timestamps
    end
  end
end
