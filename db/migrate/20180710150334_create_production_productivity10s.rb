class CreateProductionProductivity10s < ActiveRecord::Migration[5.2]
  def change
    create_table :production_productivity10s do |t|
      t.string :Districts
      t.float :Area
      t.float :Production
      t.integer :Year
      t.string :Fruit

      t.timestamps
    end
  end
end
