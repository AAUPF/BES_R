class CreateStateDomesticProduct9s < ActiveRecord::Migration[5.2]
  def change
    create_table :state_domestic_product9s do |t|
      t.string :Districts
      t.float :Per_Capita_GDP
      t.integer :Year

      t.timestamps
    end
  end
end
