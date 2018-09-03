class CreateInflationRates < ActiveRecord::Migration[5.2]
  def change
    create_table :inflation_rates do |t|
      t.string :State
      t.float :Rural_Oct_16_Index_Final
      t.float :Rural_Oct_17_Index_Provisional
      t.float :Rural_Inflation_Rate_in_percentage
      t.float :Urban_Oct_16_Index_Final
      t.float :Urban_Oct_17_Index_Provisional
      t.float :Urban_Inflation_Rate_in_percentage
      t.float :Combined_Oct_16_Index_Final
      t.float :Combined_Oct_17_Index_Provisional
      t.float :Combined_Inflation_Rate_in_percentage

      t.timestamps
    end
  end
end
