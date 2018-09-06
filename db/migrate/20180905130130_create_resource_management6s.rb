class CreateResourceManagement6s < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_management6s do |t|
      t.string :Sources_of_Revenue
      t.float :Amount
      t.string :Year

      t.timestamps
    end
  end
end
