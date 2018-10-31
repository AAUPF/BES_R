class CreateRoadTransport3s < ActiveRecord::Migration[5.2]
  def change
    create_table :road_transport3s do |t|
      t.string :Particular
      t.float :'2012-13'
      t.float :'2013-14'
      t.float :'2014-15'
      t.float :'2015-16'
      t.float :'2016-17'
      t.float :'CAGR(2012-17)'

      t.timestamps
    end
  end
end
