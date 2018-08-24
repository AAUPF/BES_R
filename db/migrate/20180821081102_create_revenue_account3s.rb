class CreateRevenueAccount3s < ActiveRecord::Migration[5.2]
  def change
    create_table :revenue_account3s do |t|
      t.string :Interest_Payment_and_Receipt
      t.float :Amount
      t.string :Year

      t.timestamps
    end
  end
end
