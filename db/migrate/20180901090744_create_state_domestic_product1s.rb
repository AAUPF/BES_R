class CreateStateDomesticProduct1s < ActiveRecord::Migration[5.2]
  def change
    create_table :state_domestic_product1s do |t|
      t.string :Sector
      t.float :'2015-16'
      t.float :'2016-17'
      t.float :'2011-12_to_2015-16'
      t.string :Reference

      t.timestamps
    end
  end
end
