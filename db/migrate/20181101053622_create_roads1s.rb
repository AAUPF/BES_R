class CreateRoads1s < ActiveRecord::Migration[5.2]
  def change
    create_table :roads1s do |t|
      t.string :Sector
      t.float :'2011-12'
      t.float :'2012-13'
      t.float :'2013-14'
      t.float :'2014-15'
      t.float :'2015-16_P'
      t.float :'2016-17_Q'
      t.float :'CAGR_2011-16'

      t.timestamps
    end
  end
end
