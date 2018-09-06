class CreateResourceManagement11s < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_management11s do |t|
      t.string :Indicators
      t.float :Percentage
      t.string :Year

      t.timestamps
    end
  end
end
