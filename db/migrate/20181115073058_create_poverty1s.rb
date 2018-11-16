class CreatePoverty1s < ActiveRecord::Migration[5.2]
  def change
    create_table :poverty1s do |t|
      t.string :Indicator
      t.string :Sector
      t.float :'1993-94'
      t.float :'1999-00'
      t.float :'2004-05'
      t.float :'2011-12'
      t.float :Reduction_in_Poverty_between_2004_05_and_2011_12
      t.float :Poverty_Line_2004_05
      t.float :Poverty_Line_2011_12

      t.timestamps
    end
  end
end
