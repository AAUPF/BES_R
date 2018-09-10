class CreateAgroBasedIndustries2s < ActiveRecord::Migration[5.2]
  def change
    create_table :agro_based_industries2s do |t|
      t.string :Location_of_Union_or_Project
      t.float :Organised_Societies
      t.float :Working_Societies
      t.float :Registered_Societies
      t.string :Year

      t.timestamps
    end
  end
end
