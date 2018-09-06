class CreateResourceManagement3s < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_management3s do |t|
      t.string :Sources_of_Revenue
      t.float :Percentage
      t.string :Year

      t.timestamps
    end
  end
end
