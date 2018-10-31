class CreateRoads10s < ActiveRecord::Migration[5.2]
  def change
    create_table :roads10s do |t|
      t.string :Districts
      t.float :NH
      t.float :SH
      t.float :MDR
      t.float :Rural_Road
      t.string :Year

      t.timestamps
    end
  end
end
