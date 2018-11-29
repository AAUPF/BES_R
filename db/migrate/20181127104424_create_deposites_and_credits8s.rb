class CreateDepositesAndCredits8s < ActiveRecord::Migration[5.2]
  def change
    create_table :deposites_and_credits8s do |t|
      t.string :Sector
      t.float :'2014-15'
      t.float :'2015-16'
      t.float :'2016-17'
      t.float :'2017_18_Sep_17'
      t.string :Indicator

      t.timestamps
    end
  end
end
