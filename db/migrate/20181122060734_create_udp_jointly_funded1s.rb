class CreateUdpJointlyFunded1s < ActiveRecord::Migration[5.2]
  def change
    create_table :udp_jointly_funded1s do |t|
      t.string :Components_Categories
      t.float :SubProject_cost_sanctioned
      t.float :Total_Expenditure_till_Nov_2017

      t.timestamps
    end
  end
end
