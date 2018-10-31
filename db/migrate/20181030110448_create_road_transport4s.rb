class CreateRoadTransport4s < ActiveRecord::Migration[5.2]
  def change
    create_table :road_transport4s do |t|
      t.string :Districts
      t.float :Truck
      t.float :Bus
      t.float :Car
      t.float :Taxi
      t.float :Jeep
      t.float :Three_Wheeler
      t.float :Two_Wheeler
      t.float :Tractor
      t.float :Trailor
      t.float :Other
      t.float :Total

      t.timestamps
    end
  end
end
