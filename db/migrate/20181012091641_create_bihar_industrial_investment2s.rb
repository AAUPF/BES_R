class CreateBiharIndustrialInvestment2s < ActiveRecord::Migration[5.2]
  def change
    create_table :bihar_industrial_investment2s do |t|
      t.string :Sectors
      t.float :Number_of_Units

      t.timestamps
    end
  end
end
