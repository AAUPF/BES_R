class CreateAvailablilityOfPower2s < ActiveRecord::Migration[5.2]
  def change
    create_table :availablility_of_power2s do |t|
      t.string :Districts
      t.float :Consumption
      t.string :Year

      t.timestamps
    end
  end
end
