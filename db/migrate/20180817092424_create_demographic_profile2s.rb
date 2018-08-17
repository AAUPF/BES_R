class CreateDemographicProfile2s < ActiveRecord::Migration[5.2]
  def change
    create_table :demographic_profile2s do |t|
      t.string :Districts
      t.float :Population
      t.float :Sex_Ratio_Overall
      t.float :Sex_Ratio_Child
      t.float :Density
      t.float :Urbanisation
      t.float :Decadal_Growth
      t.integer :Year
      t.float :Percentage_Population

      t.timestamps
    end
  end
end
