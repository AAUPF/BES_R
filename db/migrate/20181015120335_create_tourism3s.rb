class CreateTourism3s < ActiveRecord::Migration[5.2]
  def change
    create_table :tourism3s do |t|
      t.string :Sector
      t.string :Tourist
      t.float :'2012'
      t.float :'2013'
      t.float :'2014'
      t.float :'2015'
      t.float :'2016'
      t.float :'2017'
      t.timestamps
    end
  end
end
