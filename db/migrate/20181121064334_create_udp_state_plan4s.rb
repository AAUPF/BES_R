class CreateUdpStatePlan4s < ActiveRecord::Migration[5.2]
  def change
    create_table :udp_state_plan4s do |t|
      t.string :Indicators
      t.string :No_of_households

      t.timestamps
    end
  end
end
