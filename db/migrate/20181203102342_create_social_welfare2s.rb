class CreateSocialWelfare2s < ActiveRecord::Migration[5.2]
  def change
    create_table :social_welfare2s do |t|
      t.string :Year
      t.float :Total_Outlay
      t.float :Total_Approved_Amount
      t.float :Total_Expenditure
      t.float :Utilisation_percentage

      t.timestamps
    end
  end
end
