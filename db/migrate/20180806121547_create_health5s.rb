class CreateHealth5s < ActiveRecord::Migration[5.2]
  def change
    create_table :health5s do |t|
      t.integer :Year
      t.float :District_Hospital
      t.float :Referral_Hospital
      t.float :Sub_Divisional_Hospital
      t.float :PHC
      t.float :Sub_Centre
      t.float :APHC
      t.float :Total_Health_Centre
      t.float :Health_centres_per_lakh_of_population

      t.timestamps
    end
  end
end
