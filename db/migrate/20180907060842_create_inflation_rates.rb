class CreateInflationRates < ActiveRecord::Migration[5.2]
  def change
    create_table :inflation_rates do |t|
      t.string :State
      t.string :Sector
      t.float :Oct_16_Index_Final
      t.float :Oct_17_Index_Provisional
      t.float :Inflation_Rate_in_percentage

      t.timestamps
    end
  end
end
