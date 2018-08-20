class CreateTaxGsdpRatios < ActiveRecord::Migration[5.2]
  def change
    create_table :tax_gsdp_ratios do |t|
      t.string :State
      t.float :Revenue_Receipts
      t.float :States_Own_Tax
      t.float :GSDP
      t.float :Ratio_of_SOT_and_RR
      t.float :Ratio_of_SOT_and_GSDP
      t.float :Ratio_of_Total_Revenue_and_GSDP

      t.timestamps
    end
  end
end
