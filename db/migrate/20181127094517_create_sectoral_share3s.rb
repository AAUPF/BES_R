class CreateSectoralShare3s < ActiveRecord::Migration[5.2]
  def change
    create_table :sectoral_share3s do |t|
      t.string :Agencies
      t.float :Target
      t.float :Achievement
      t.float :Achievement_Percentage
      t.string :Year

      t.timestamps
    end
  end
end
