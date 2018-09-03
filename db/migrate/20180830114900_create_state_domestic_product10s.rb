class CreateStateDomesticProduct10s < ActiveRecord::Migration[5.2]
  def change
    create_table :state_domestic_product10s do |t|
      t.string :Districts
      t.float :Share_of_Population
      t.float :Petrol
      t.float :Diesel
      t.float :LPG
      t.string :Year
      t.float :Percentage_Share_of_Petrol
      t.float :Percentage_Share_of_Diesel
      t.float :Percentage_Share_of_LPG

      t.timestamps
    end
  end
end
