class CreateUdpStatePlan2s < ActiveRecord::Migration[5.2]
  def change
    create_table :udp_state_plan2s do |t|
      t.string :Districts
      t.float :Total_Number_of_Urban_Ward
      t.float :Total_Number_of_Urban_Households
      t.float :Number_of_Households_Having_Piped_Water_Supply
      t.float :Number_of_Households_Having_Access_to_Tap_Water_2016_17
      t.float :Number_of_Households_Having_Access_to_Tap_Water_2017_18
      t.float :Number_of_Households_Having_Access_to_Tap_Water_2016_18

      t.timestamps
    end
  end
end
