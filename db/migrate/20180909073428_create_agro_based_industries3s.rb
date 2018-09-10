class CreateAgroBasedIndustries3s < ActiveRecord::Migration[5.2]
  def change
    create_table :agro_based_industries3s do |t|
      t.string :Union_Project
      t.float :Daily_Milk_Collection
      t.string :Year

      t.timestamps
    end
  end
end
