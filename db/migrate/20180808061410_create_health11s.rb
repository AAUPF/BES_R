class CreateHealth11s < ActiveRecord::Migration[5.2]
  def change
    create_table :health11s do |t|
      t.string :Diseases
      t.float :Number_of_Patients
      t.integer :Year

      t.timestamps
    end
  end
end
