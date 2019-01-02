class CreateDistrictWiseSection1s < ActiveRecord::Migration[5.2]
  def change
    create_table :district_wise_section1s do |t|
      t.string :Sector
      t.float :Population_Share
      t.float :'2013-14'
      t.float :'2014-15'
      t.float :'2015-16'
      t.float :'2016-17'
      t.string :Indicator

      t.timestamps
    end
  end
end
