class CreateRevenueAccount4s < ActiveRecord::Migration[5.2]
  def change
    create_table :revenue_account4s do |t|
      t.string :Revenue
      t.float :Amount
      t.string :Year

      t.timestamps
    end
  end
end
