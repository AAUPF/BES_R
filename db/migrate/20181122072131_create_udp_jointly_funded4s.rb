class CreateUdpJointlyFunded4s < ActiveRecord::Migration[5.2]
  def change
    create_table :udp_jointly_funded4s do |t|
      t.string :Program_Monitoring_Parameter
      t.float :Annual_Target
      t.float :Achievement

      t.timestamps
    end
  end
end
