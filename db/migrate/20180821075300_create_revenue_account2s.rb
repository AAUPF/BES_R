class CreateRevenueAccount2s < ActiveRecord::Migration[5.2]
  def change
    create_table :revenue_account2s do |t|
      t.string :Expenditure_Pattern
      t.float :Amount
      t.string :Year

      t.timestamps
    end
  end
end
