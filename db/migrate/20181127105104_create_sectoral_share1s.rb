class CreateSectoralShare1s < ActiveRecord::Migration[5.2]
  def change
    create_table :sectoral_share1s do |t|
      t.string :Sector
      t.float :ACP_Target
      t.float :Achievement
      t.float :Achievement_Percentage
      t.float :Percentage_of_Share_in_Advances
      t.string :Year

      t.timestamps
    end
  end
end
