class CreateHealth17s < ActiveRecord::Migration[5.2]
  def change
    create_table :health17s do |t|
      t.string :Districts
      t.float :Regular_Post_sanctioned
      t.float :Contractual_Post_sanctioned
      t.float :Regular_Grade_A_Nurses_Employed
      t.float :Contractual_Grade_A_Nurses_Employed
      t.float :Number_of_Grade_A_Nurses_per_lakh_population
      t.integer :Year

      t.timestamps
    end
  end
end
