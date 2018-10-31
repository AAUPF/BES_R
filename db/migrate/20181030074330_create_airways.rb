class CreateAirways < ActiveRecord::Migration[5.2]
  def change
    create_table :airways do |t|
      t.string :Year
      t.float :Number_of_Aircraft_Movements
      t.float :Passengers
      t.float :Freight

      t.timestamps
    end
  end
end
