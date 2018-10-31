class CreateRoads4s < ActiveRecord::Migration[5.2]
  def change
    create_table :roads4s do |t|
      t.string :Type_of_Road
      t.float :Total
      t.float :Paved
      t.float :Percent_of_Total
      t.float :Percent_of_paved
      t.string :Year

      t.timestamps
    end
  end
end
