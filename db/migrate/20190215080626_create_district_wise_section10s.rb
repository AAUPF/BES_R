class CreateDistrictWiseSection10s < ActiveRecord::Migration[5.2]
  def change
    create_table :district_wise_section10s do |t|
      t.string :Sector
      t.decimal :'2012-13'
      t.decimal :'2013-14'
      t.decimal :'2014-15'
      t.decimal :'2015-16'
      t.decimal :'2016-17'
      t.string :Indicator
      t.string :Indicator1

      t.timestamps
    end
  end
end
