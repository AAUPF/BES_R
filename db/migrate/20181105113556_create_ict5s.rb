class CreateIct5s < ActiveRecord::Migration[5.2]
  def change
    create_table :ict5s do |t|
      t.string :State
      t.float :Rural
      t.float :Deposits
      t.float :Investment
      t.float :MIS
      t.float :Sukanya_Samridhi_Account
      t.float :MG_NREGA
      t.float :Total
      t.string :Indicator

      t.timestamps
    end
  end
end
