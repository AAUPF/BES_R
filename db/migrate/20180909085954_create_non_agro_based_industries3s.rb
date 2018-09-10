class CreateNonAgroBasedIndustries3s < ActiveRecord::Migration[5.2]
  def change
    create_table :non_agro_based_industries3s do |t|
      t.string :Year
      t.float :Target
      t.float :Achievement
      t.float :Achievement_Percentage

      t.timestamps
    end
  end
end
