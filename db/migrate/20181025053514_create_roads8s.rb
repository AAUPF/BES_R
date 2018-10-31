class CreateRoads8s < ActiveRecord::Migration[5.2]
  def change
    create_table :roads8s do |t|
      t.string :Agency_wise_Road_Bridge
      t.string :Length_in_kms
      t.string :Remarks

      t.timestamps
    end
  end
end
