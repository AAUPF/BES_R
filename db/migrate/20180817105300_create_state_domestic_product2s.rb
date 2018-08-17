class CreateStateDomesticProduct2s < ActiveRecord::Migration[5.2]
  def change
    create_table :state_domestic_product2s do |t|
      t.string :State
      t.float :Per_Capita_Income
      t.integer :Year

      t.timestamps
    end
  end
end
