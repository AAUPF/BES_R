class CreateResourceManagement10s < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_management10s do |t|
      t.string :Indicator
      t.float :Collection
      t.float :Expenditure_on_collection
      t.float :Cost_as_Percentage_of_Collection
      t.string :Year

      t.timestamps
    end
  end
end
