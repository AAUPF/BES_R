class CreateBridgeSector1s < ActiveRecord::Migration[5.2]
  def change
    create_table :bridge_sector1s do |t|
      t.string :Division
      t.float :Number_of_Projects
      t.float :Cost

      t.timestamps
    end
  end
end
