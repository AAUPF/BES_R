class CreateIrrigation1s < ActiveRecord::Migration[5.2]
  def change
    create_table :irrigation1s do |t|
      t.string :TypeofIrrigationPotential
      t.float :Ultimat_Potential
      t.float :Created_Potential
      t.float :Utilised_Potential

      t.timestamps
    end
  end
end
