class CreateDepositesAndCredits3s < ActiveRecord::Migration[5.2]
  def change
    create_table :deposites_and_credits3s do |t|
      t.string :Indicator
      t.string :Area
      t.float :Deposits
      t.float :Credits
      t.float :CD_Ratio
      t.float :Investment
      t.float :ICD_Ratio

      t.timestamps
    end
  end
end
