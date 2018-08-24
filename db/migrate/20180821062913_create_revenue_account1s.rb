class CreateRevenueAccount1s < ActiveRecord::Migration[5.2]
  def change
    create_table :revenue_account1s do |t|
      t.string :Revenue_Account
      t.float :Amount
      t.string :Year

      t.timestamps
    end
  end
end
