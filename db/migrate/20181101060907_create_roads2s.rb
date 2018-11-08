class CreateRoads2s < ActiveRecord::Migration[5.2]
  def change
    create_table :roads2s do |t|
      t.string :Sector
      t.float :'2007-08'
      t.float :'2011-12'
      t.float :'2012-13'
      t.float :'2013-14'
      t.float :'2014-15'
      t.float :'2015-16'
      t.float :'2016-17'
      t.float :'2017-18'
      t.float :'CAGR_2014-18'
      t.string :Indicator

      t.timestamps
    end
  end
end
