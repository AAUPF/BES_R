class CreateLevelOfUrbanisation2s < ActiveRecord::Migration[5.2]
  def change
    create_table :level_of_urbanisation2s do |t|
      t.string :Size_Class
      t.float :Number_2001
      t.float :Number_2011
      t.float :Population_million_2001
      t.float :Population_million_2011
      t.float :Growth_Rate_of_Population

      t.timestamps
    end
  end
end
