class CreateSocialWelfare3s < ActiveRecord::Migration[5.2]
  def change
    create_table :social_welfare3s do |t|
      t.string :Year
      t.float :Number_of_Beneficiaries
      t.float :Fund_Allocation
      t.string :Indicator

      t.timestamps
    end
  end
end
