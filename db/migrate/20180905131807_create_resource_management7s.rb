class CreateResourceManagement7s < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_management7s do |t|
      t.string :Revenue_Sources
      t.float :Percentage
      t.string :Year

      t.timestamps
    end
  end
end
