class CreateLabourResourceAndWelfare1s < ActiveRecord::Migration[5.2]
  def change
    create_table :labour_resource_and_welfare1s do |t|
      t.string :State
      t.float :Total_Number_of_Workers
      t.float :Cultivators
      t.float :Agricultural_Labourers
      t.float :Household_Industry_Workers
      t.float :Other_Workers
      t.float :Total

      t.timestamps
    end
  end
end
