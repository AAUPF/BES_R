class CreateProjectionOfPowerRequirement4s < ActiveRecord::Migration[5.2]
  def change
    create_table :projection_of_power_requirement4s do |t|
      t.string :Year
      t.float :Total_Capacity_MW
      t.float :Estimated_Peak_Availability_at_State_Periphery_MW
      t.float :Estimated_Energy_Availability_at_State_Periphery_MU

      t.timestamps
    end
  end
end
