class CreateBiharStartUpPolicies < ActiveRecord::Migration[5.2]
  def change
    create_table :bihar_start_up_policies do |t|
      t.string :Incubators
      t.float :Number_of_Startups

      t.timestamps
    end
  end
end
