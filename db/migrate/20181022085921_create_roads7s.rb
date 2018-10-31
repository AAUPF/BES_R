class CreateRoads7s < ActiveRecord::Migration[5.2]
  def change
    create_table :roads7s do |t|
      t.string :Project
      t.float :Length_in_kms
      t.string :Remarks

      t.timestamps
    end
  end
end
