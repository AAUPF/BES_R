class CreateDepositesAndCredits7s < ActiveRecord::Migration[5.2]
  def change
    create_table :deposites_and_credits7s do |t|
      t.string :Banks
      t.float :Number_of_branches
      t.float :Deposit
      t.float :Advance
      t.float :CD_Ratio
      t.string :Indicator

      t.timestamps
    end
  end
end
