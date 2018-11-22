class CreateUdpJointlyFunded5s < ActiveRecord::Migration[5.2]
  def change
    create_table :udp_jointly_funded5s do |t|
      t.string :Program_or_Monitoring_Parameter
      t.float :Annual_Target
      t.float :Progress
      t.string :Indicator

      t.timestamps
    end
  end
end
