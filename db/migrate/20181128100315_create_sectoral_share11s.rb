class CreateSectoralShare11s < ActiveRecord::Migration[5.2]
  def change
    create_table :sectoral_share11s do |t|
      t.string :Districts
      t.float :Target
      t.float :Achievement
      t.float :Achievement_Percentage
      t.string :Indicator

      t.timestamps
    end
  end
end
