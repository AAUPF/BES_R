class CreateProductionProductivity4s < ActiveRecord::Migration[5.2]
  def change
    create_table :production_productivity4s do |t|
      t.string :Fruits
      t.float :Area
      t.float :Production
      t.integer :Year

      t.timestamps
    end
  end
end
