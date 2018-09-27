class CreateStatePublicSector1s < ActiveRecord::Migration[5.2]
  def change
    create_table :state_public_sector1s do |t|
      t.string :Year_as_on_31st_March
      t.float :Number_of_Working_PSUs
      t.float :Number_of_Non_Working_PSUs
      t.float :Statutory_Corporations
      t.string :Public_Sector_Companies
      t.float :Equity
      t.float :Loans
      t.float :Investment

      t.timestamps
    end
  end
end
