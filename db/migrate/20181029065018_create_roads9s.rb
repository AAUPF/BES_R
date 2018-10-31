class CreateRoads9s < ActiveRecord::Migration[5.2]
  def change
    create_table :roads9s do |t|
      t.string :Name_of_the_Scheme
      t.float :Road_Constructed
      t.float :Bridge_Constructed
      t.float :Expenditure

      t.timestamps
    end
  end
end
