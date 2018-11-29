class CreateDepositesAndCredits2s < ActiveRecord::Migration[5.2]
  def change
    create_table :deposites_and_credits2s do |t|
      t.string :Year
      t.float :Deposit
      t.float :Credit
      t.float :CD_Ratio
      t.timestamps
    end
  end
end
