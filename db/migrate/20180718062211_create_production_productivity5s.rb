class CreateProductionProductivity5s < ActiveRecord::Migration[5.2]
  def change
    create_table :production_productivity5s do |t|
      t.string :Vegetables
      t.float :Area
      t.float :Production
      t.integer :Year

      t.timestamps
    end
  end
end
