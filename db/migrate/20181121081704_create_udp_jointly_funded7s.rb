class CreateUdpJointlyFunded7s < ActiveRecord::Migration[5.2]
  def change
    create_table :udp_jointly_funded7s do |t|
      t.string :Shelters_Sanctioned_Planned
      t.float :Operational
      t.float :Already_constructed_refurbished_and_under_process
      t.float :Under_process_of_construction_refurbishment

      t.timestamps
    end
  end
end
