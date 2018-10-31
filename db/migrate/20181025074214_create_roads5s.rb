class CreateRoads5s < ActiveRecord::Migration[5.2]
  def change
    create_table :roads5s do |t|
      t.string :Category_of_Road
      t.float :Length_in_kms
      t.float :Percentage_share
      t.string :Indicator

      t.timestamps
    end
  end
end
