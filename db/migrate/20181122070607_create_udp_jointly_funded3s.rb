class CreateUdpJointlyFunded3s < ActiveRecord::Migration[5.2]
  def change
    create_table :udp_jointly_funded3s do |t|
      t.string :Category
      t.float :Annual_Target
      t.float :Number_of_Persons_Undergoing_Training
      t.float :Number_of_Persons_Completed_Training

      t.timestamps
    end
  end
end
