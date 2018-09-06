class CreateResourceManagement12s < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_management12s do |t|
      t.string :Revenue_Sources
      t.float :Buoyancy_Ratio
      t.string :Year

      t.timestamps
    end
  end
end
