class CreateAgroBasedIndustries4s < ActiveRecord::Migration[5.2]
  def change
    create_table :agro_based_industries4s do |t|
      t.string :Location_of_Project
      t.float :Procurement
      t.string :Year

      t.timestamps
    end
  end
end
