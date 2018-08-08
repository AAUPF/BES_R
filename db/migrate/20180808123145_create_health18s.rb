class CreateHealth18s < ActiveRecord::Migration[5.2]
  def change
    create_table :health18s do |t|
      t.string :Districts
      t.float :Regular_Post_sanctioned
      t.float :Contractual_Post_sanctioned
      t.float :Regular_ANM_Employed
      t.float :Contractual_ANM_Employed
      t.float :Number_of_ANM_per_lakh_population
      t.integer :Year

      t.timestamps
    end
  end
end
