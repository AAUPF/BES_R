class CreateStatePublicSector2s < ActiveRecord::Migration[5.2]
  def change
    create_table :state_public_sector2s do |t|
      t.string :Type_of_Company_or_corporation
      t.float :Government_Companies_Capital
      t.float :Government_Companies_Long_Term_Loans
      t.float :Total_Government_Companies
      t.float :Statutory_Corporations_Capital
      t.float :Statutory_Corporations_Long_Term_Loans
      t.float :Total_Statutory_Corporations
      t.float :Grand_Total

      t.timestamps
    end
  end
end
