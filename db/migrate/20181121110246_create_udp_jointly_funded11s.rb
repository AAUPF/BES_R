class CreateUdpJointlyFunded11s < ActiveRecord::Migration[5.2]
  def change
    create_table :udp_jointly_funded11s do |t|
      t.string :Description
      t.float :No_of_Projects
      t.float :Amount
      t.string :Remarks

      t.timestamps
    end
  end
end
