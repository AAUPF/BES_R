class CreateDepositesAndCredits6s < ActiveRecord::Migration[5.2]
  def change
    create_table :deposites_and_credits6s do |t|
      t.string :Sector
      t.float :Number_of_Branches
      t.float :'2013-14'
      t.float :'2014-15'
      t.float :'2015-16'
      t.float :'2016-17'
      t.float :'2017_18_upto_Sep_2017'
      t.string :Indicator

      t.timestamps
    end
  end
end
