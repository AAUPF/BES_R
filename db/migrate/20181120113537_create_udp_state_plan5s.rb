class CreateUdpStatePlan5s < ActiveRecord::Migration[5.2]
  def change
    create_table :udp_state_plan5s do |t|
      t.string :Districts
      t.float :Total_Number_of_Urban_Households
      t.float :Total_Number_of_Urban_Wards
      t.float :Number_of_Households_to_be_covered
      t.float :Number_of_Household_covered

      t.timestamps
    end
  end
end
