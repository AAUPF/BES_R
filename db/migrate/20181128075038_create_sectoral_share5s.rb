class CreateSectoralShare5s < ActiveRecord::Migration[5.2]
  def change
    create_table :sectoral_share5s do |t|
      t.string :Year
      t.float :Commercial_Banks
      t.float :RRBs
      t.float :Cooperative_and_LDBs
      t.float :Total
      t.float :Annual_Growth_Rate

      t.timestamps
    end
  end
end
