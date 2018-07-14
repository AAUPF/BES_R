class CreateAgriculturalCredit1s < ActiveRecord::Migration[5.2]
  def change
    create_table :agricultural_credit1s do |t|
      t.integer :Year
      t.float :Commercial_Bank_Target
      t.float :Commercial_Bank_Achievement
      t.float :RRBs_Target
      t.float :RRBs_Achievement
      t.float :CCBs_Target
      t.float :CCBs_Achievement
      t.float :Total_Target
      t.float :Total_Achievement

      t.timestamps
    end
  end
end
