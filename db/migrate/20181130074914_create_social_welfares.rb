class CreateSocialWelfares < ActiveRecord::Migration[5.2]
  def change
    create_table :social_welfares do |t|
      t.string :Sector
      t.float :Budget
      t.float :Actual_Expenditure
      t.float :Utilisation_Percentage
      t.string :Year

      t.timestamps
    end
  end
end
