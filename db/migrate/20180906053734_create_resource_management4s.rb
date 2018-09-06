class CreateResourceManagement4s < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_management4s do |t|
      t.string :Sources_of_Revenue
      t.float :Percentage_Growth_Over_Previous_Year
      t.string :Year

      t.timestamps
    end
  end
end
