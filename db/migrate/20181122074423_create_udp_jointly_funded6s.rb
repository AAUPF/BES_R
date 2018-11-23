class CreateUdpJointlyFunded6s < ActiveRecord::Migration[5.2]
  def change
    create_table :udp_jointly_funded6s do |t|
      t.string :Year
      t.float :DAY_NULM
      t.float :State_Plan_Head_Nagrik_Suvidha
      t.float :Total

      t.timestamps
    end
  end
end
