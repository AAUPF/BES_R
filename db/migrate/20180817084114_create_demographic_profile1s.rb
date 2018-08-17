class CreateDemographicProfile1s < ActiveRecord::Migration[5.2]
  def change
    create_table :demographic_profile1s do |t|
      t.string :Demographic_Indicator
      t.float :Bihar
      t.float :India
      t.integer :Year

      t.timestamps
    end
  end
end
