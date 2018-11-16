class CreatePanchayatiRaj2s < ActiveRecord::Migration[5.2]
  def change
    create_table :panchayati_raj2s do |t|
      t.string :Sector
      t.float :'2013_14_Actual'
      t.float :'2014_15_Actual'
      t.float :'2015_16_Actual'
      t.float :'2016_17_BE'
      t.string :Indicator

      t.timestamps
    end
  end
end
