class CreateBiharIndustrialInvestment1s < ActiveRecord::Migration[5.2]
  def change
    create_table :bihar_industrial_investment1s do |t|
      t.string :Sectors
      t.float :Number_of_Proposed_Units
      t.float :Proposed_Investment

      t.timestamps
    end
  end
end
