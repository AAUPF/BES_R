class CreateRoads3s < ActiveRecord::Migration[5.2]
  def change
    create_table :roads3s do |t|
      t.string :State
      t.float :NH
      t.float :SH
      t.float :Other
      t.float :Total
      t.string :Indicator

      t.timestamps
    end
  end
end
