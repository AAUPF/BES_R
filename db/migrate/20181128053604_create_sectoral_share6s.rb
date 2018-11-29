class CreateSectoralShare6s < ActiveRecord::Migration[5.2]
  def change
    create_table :sectoral_share6s do |t|
      t.string :State
      t.float :No_of_PACS
      t.float :Deposits_Rs_crore
      t.float :Borrowings_Rs_crore
      t.float :Loans_and_Advances_Outstanding_for_Agriculture_Rs_crore
      t.float :Loans_and_Advances_Outstanding_for_Non_Agriculture_Rs_crore
      t.float :No_of_Societies_in_Profit
      t.float :Amount_of_Societies_in_Profit_Rs_lakh
      t.float :No_of_Societies_in_Loss
      t.float :Amount_of_Societies_in_Loss_Rs_lakh

      t.timestamps
    end
  end
end
