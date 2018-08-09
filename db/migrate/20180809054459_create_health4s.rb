class CreateHealth4s < ActiveRecord::Migration[5.2]
  def change
    create_table :health4s do |t|
      t.integer :Year
      t.float :Number_of_patients_visiting_government_hospitals_per_month
      t.float :Percentage_growth

      t.timestamps
    end
  end
end
