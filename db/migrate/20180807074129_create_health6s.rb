class CreateHealth6s < ActiveRecord::Migration[5.2]
  def change
    create_table :health6s do |t|
      t.string :District
      t.float :Average_number_of_Outpatient_visits_per_day
      t.float :Inpatient_Bed_Occupancy_Rate
      t.integer :Year

      t.timestamps
    end
  end
end
