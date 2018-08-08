class CreateHealth16s < ActiveRecord::Migration[5.2]
  def change
    create_table :health16s do |t|
      t.string :Districts
      t.float :Regular_Post_sanctioned
      t.float :Contractual_Post_sanctioned
      t.float :Regular_Doctor_Employed
      t.float :Contractual_Doctor_Employed
      t.integer :Year
      t.float :Number_of_doctors_per_lakh_population

      t.timestamps
    end
  end
end
