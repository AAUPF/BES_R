class CreateLevelOfUrbanisation3s < ActiveRecord::Migration[5.2]
  def change
    create_table :level_of_urbanisation3s do |t|
      t.string :Districts
      t.float :Urbanisation
      t.string :Year

      t.timestamps
    end
  end
end
