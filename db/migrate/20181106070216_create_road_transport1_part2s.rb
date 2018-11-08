class CreateRoadTransport1Part2s < ActiveRecord::Migration[5.2]
  def change
    create_table :road_transport1_part2s do |t|
      t.string :State
      t.float :Buses
      t.float :Taxis
      t.float :Light_Motor_Vehicles_Passengers
      t.float :Goods_Carrier_Vehicles

      t.timestamps
    end
  end
end
