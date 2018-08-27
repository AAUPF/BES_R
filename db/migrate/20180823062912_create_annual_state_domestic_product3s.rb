class CreateAnnualStateDomesticProduct3s < ActiveRecord::Migration[5.2]
  def change
    create_table :annual_state_domestic_product3s do |t|
      t.string :Sector
      t.float :'2011-12'
      t.float :'2012-13'
      t.float :'2013-14'
      t.float :'2014-15'
      t.float :'2015-16'
      t.float :'2016-17'

      t.timestamps
    end
  end
end
