class CreateStateDomesticProduct5s < ActiveRecord::Migration[5.2]
  def change
    create_table :state_domestic_product5s do |t|
      t.string :Sector
      t.float :'2011-12'
      t.float :'2012-13'
      t.float :'2013-14'
      t.float :'2014-15'
      t.float :'2015-16'
      t.float :'2016-17'
      t.float :'2011-16'

      t.timestamps
    end
  end
end
