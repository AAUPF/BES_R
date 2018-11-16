class CreateDistributionOfHomesteadLand1s < ActiveRecord::Migration[5.2]
  def change
    create_table :distribution_of_homestead_land1s do |t|
      t.string :Item
      t.float :Mahadalit
      t.float :SC
      t.float :ST
      t.float :BC_Schedule_1
      t.float :BC_Schedule_2
      t.float :Total
      t.float :Percentage_of_Mahadalit
      t.float :Percentage_of_SC
      t.float :Percentage_of_ST
      t.float :Percentage_of_BC_Schedule_1
      t.float :Percentage_of_BC_Schedule_2
      t.float :Total_Percentage

      t.timestamps
    end
  end
end
