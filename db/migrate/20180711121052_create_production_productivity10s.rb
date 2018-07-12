class CreateProductionProductivity10s < ActiveRecord::Migration[5.2]
  def change
    create_table :production_productivity10s do |t|
      t.string :Districts
      t.float :Mango_Area
      t.float :Mango_Production
      t.float :Guava_Area
      t.float :Guava_Production
      t.float :Litchi_Area
      t.float :Litchi_Production
      t.float :Banana_Area
      t.float :Banana_Production
      t.integer :Year

      t.timestamps
    end
  end
end
