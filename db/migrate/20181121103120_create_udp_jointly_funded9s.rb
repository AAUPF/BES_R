class CreateUdpJointlyFunded9s < ActiveRecord::Migration[5.2]
  def change
    create_table :udp_jointly_funded9s do |t|
      t.string :Indicators
      t.float :Number_Amount

      t.timestamps
    end
  end
end
