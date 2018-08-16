class CreateProductionProductivity8s < ActiveRecord::Migration[5.2]
  def change
    create_table :production_productivity8s do |t|
      t.string :Districts
      t.float :Area
      t.float :Production
      t.float :Productivity
      t.integer :Year
      t.float :Percentage_Area
      t.float :Percentage_Production

      t.timestamps
    end
  end
end
