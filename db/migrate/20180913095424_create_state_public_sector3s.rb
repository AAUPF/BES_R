class CreateStatePublicSector3s < ActiveRecord::Migration[5.2]
  def change
    create_table :state_public_sector3s do |t|
      t.string :Sector
      t.float :Number_of_Statutory_Corporations
      t.float :Number_of_Working_Companies
      t.float :Number_of_NonWorking_Companies

      t.timestamps
    end
  end
end
