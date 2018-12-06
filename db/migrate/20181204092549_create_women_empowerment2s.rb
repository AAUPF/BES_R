class CreateWomenEmpowerment2s < ActiveRecord::Migration[5.2]
  def change
    create_table :women_empowerment2s do |t|
      t.string :Sector
      t.float :Total_Budget
      t.float :Under_Category_I
      t.float :Under_Category_II
      t.float :Total
      t.string :Year

      t.timestamps
    end
  end
end
