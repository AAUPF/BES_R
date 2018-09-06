class CreateResourceManagement8s < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_management8s do |t|
      t.string :Revenue_Sources
      t.float :Yearly_Growth_Rates
      t.string :Year

      t.timestamps
    end
  end
end
