class CreateAgroBasedIndustries1s < ActiveRecord::Migration[5.2]
  def change
    create_table :agro_based_industries1s do |t|
      t.string :Name_of_Sugar_Mill
      t.float :Sugarcane_Crushed
      t.float :Sugar_Produced
      t.float :Recovery_Percentage
      t.string :Year

      t.timestamps
    end
  end
end
