class CreateResourceManagement9s < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_management9s do |t|
      t.string :Revenue_Sources
      t.float :Budget_Estimate
      t.float :Actual_Receipts
      t.float :Variation_Excess_or_Shortfall_in_Amount
      t.float :Variation_Excess_or_Shortfall_in_Percentage

      t.timestamps
    end
  end
end
