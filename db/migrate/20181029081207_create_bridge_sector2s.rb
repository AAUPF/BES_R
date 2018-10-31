class CreateBridgeSector2s < ActiveRecord::Migration[5.2]
  def change
    create_table :bridge_sector2s do |t|
      t.string :Year
      t.float :Number_of_Bridges
      t.float :Expenditure
      t.float :Turnover
      t.float :Total_Revenue
      t.float :Administrative_Expenditure
      t.float :Gross_Profit
      t.float :Net_Profit

      t.timestamps
    end
  end
end
