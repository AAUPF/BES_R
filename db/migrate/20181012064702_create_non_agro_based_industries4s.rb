class CreateNonAgroBasedIndustries4s < ActiveRecord::Migration[5.2]
  def change
    create_table :non_agro_based_industries4s do |t|
      t.string :Sericulture_Sector
      t.float :Mulberry
      t.float :Tasar
      t.float :Castor
      t.string :Year

      t.timestamps
    end
  end
end
