class CreateUdpJointlyFunded12s < ActiveRecord::Migration[5.2]
  def change
    create_table :udp_jointly_funded12s do |t|
      t.string :Name_of_the_Project
      t.string :Activities
      t.float :Approved_Project_Cost
      t.float :Amount_released
      t.string :Status

      t.timestamps
    end
  end
end
