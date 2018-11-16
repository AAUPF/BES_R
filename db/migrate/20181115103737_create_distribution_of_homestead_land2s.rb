class CreateDistributionOfHomesteadLand2s < ActiveRecord::Migration[5.2]
  def change
    create_table :distribution_of_homestead_land2s do |t|
      t.string :Sector
      t.float :'2005-06'
      t.float :'2010-11'
      t.string :Indicator

      t.timestamps
    end
  end
end
