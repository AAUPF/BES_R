class CreateRevenueAccount5s < ActiveRecord::Migration[5.2]
  def change
    create_table :revenue_account5s do |t|
      t.string :Transfer_of_Resources
      t.float :Amount
      t.string :Year

      t.timestamps
    end
  end
end
