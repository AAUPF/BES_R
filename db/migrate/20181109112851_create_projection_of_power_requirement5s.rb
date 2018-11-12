class CreateProjectionOfPowerRequirement5s < ActiveRecord::Migration[5.2]
  def change
    create_table :projection_of_power_requirement5s do |t|
      t.string :Sector
      t.float :'2017-18'
      t.float :'2018-19'
      t.float :'2019-20'

      t.timestamps
    end
  end
end
