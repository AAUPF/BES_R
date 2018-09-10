class CreateSupportInstitutions2s < ActiveRecord::Migration[5.2]
  def change
    create_table :support_institutions2s do |t|
      t.string :Year
      t.float :Amount_Allotted_Rs_lakh
      t.float :Amount_spent_Rs_lakh
      t.float :Number_of_Entrepreneurs_benefited
      t.float :Amount_Spent_in_Percentage

      t.timestamps
    end
  end
end
