class CreateHealth9s < ActiveRecord::Migration[5.2]
  def change
    create_table :health9s do |t|
      t.string :State
      t.float :Percentage_of_children_fully_immunized_NFHS_3_2005_06
      t.float :Percentage_of_children_fully_immunized_NFHS_4_2015_16
      t.float :Percentage_Point_Increase
      t.float :Rank_by_percentage_increase

      t.timestamps
    end
  end
end
