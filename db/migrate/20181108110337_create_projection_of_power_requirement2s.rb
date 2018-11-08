class CreateProjectionOfPowerRequirement2s < ActiveRecord::Migration[5.2]
  def change
    create_table :projection_of_power_requirement2s do |t|
      t.string :Indicators
      t.float :'2017-18'
      t.float :'2018-19'

      t.timestamps
    end
  end
end
