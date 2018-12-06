class CreateSocialWelfare1s < ActiveRecord::Migration[5.2]
  def change
    create_table :social_welfare1s do |t|
      t.string :Scheme
      t.float :Number_of_Beneficiaries
      t.float :Term_Loan
      t.float :Bank_Loan
      t.float :Margin_Money
      t.float :Subsidy
      t.float :Total

      t.timestamps
    end
  end
end
