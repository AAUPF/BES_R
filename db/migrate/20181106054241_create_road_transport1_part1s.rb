class CreateRoadTransport1Part1s < ActiveRecord::Migration[5.2]
  def change
    create_table :road_transport1_part1s do |t|
      t.string :State
      t.float :Two_Wheeler
      t.float :Cars
      t.float :Jeeps
      t.float :Miscellaneous

      t.timestamps
    end
  end
end
