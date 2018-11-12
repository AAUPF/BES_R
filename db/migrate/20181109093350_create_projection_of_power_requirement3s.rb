class CreateProjectionOfPowerRequirement3s < ActiveRecord::Migration[5.2]
  def change
    create_table :projection_of_power_requirement3s do |t|
      t.string :Sector
      t.float :'Mar-17'
      t.float :'2017-18'
      t.float :'2018-19'
      t.string :Indicator

      t.timestamps
    end
  end
end
