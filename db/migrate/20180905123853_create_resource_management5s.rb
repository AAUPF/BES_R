class CreateResourceManagement5s < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_management5s do |t|
      t.string :Source
      t.float :Percentage
      t.string :Year

      t.timestamps
    end
  end
end
