class CreateProductionProductivity7s < ActiveRecord::Migration[5.2]
  def change
    create_table :production_productivity7s do |t|
      t.float :Area
      t.string :Districts
      t.float :Production
      t.float :Productivity
      t.float :Year
      t.float :Percentage_Area
      t.float :Percentage_Production

      t.timestamps
    end
  end
end
