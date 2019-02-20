class CreateDistrictWiseSection11s < ActiveRecord::Migration[5.2]
  def change
    create_table :district_wise_section11s do |t|
      t.string :Districts
      t.decimal :'2014-15'
      t.decimal :'2015-16'
      t.decimal :'2016-17'
      t.string :Indicator
      t.string :Indicator1

      t.timestamps
    end
  end
end
