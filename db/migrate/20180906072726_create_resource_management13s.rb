class CreateResourceManagement13s < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_management13s do |t|
      t.string :Sources
      t.float :Amount
      t.string :Year

      t.timestamps
    end
  end
end
