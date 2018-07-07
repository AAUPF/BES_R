class CreateProductionProductivity10s < ActiveRecord::Migration[5.2]
  def change
    create_table :production_productivity10s do |t|
      t.string :Districts
      t.float :Mango_Area_2015
      t.float :Mango_Production_2015
      t.float :Mango_Area_2016
      t.float :Mango_Production_2016
      t.float :Guava_Area_2015
      t.float :Guava_Production_2015
      t.float :Guava_Area_2016
      t.float :Guava_Production_2016
      t.float :Litchi_Area_2015
      t.float :Litchi_Production_2015
      t.float :Litchi_Area_2016
      t.float :Litchi_Production_2016
      t.float :Banana_Area_2015
      t.float :Banana_Production_2015
      t.float :Banana_Area_2016
      t.float :Banana_Production_2016

      t.timestamps
    end
  end
end
