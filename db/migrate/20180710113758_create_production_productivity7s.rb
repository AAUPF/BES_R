class CreateProductionProductivity7s < ActiveRecord::Migration[5.2]
  def change
    create_table :production_productivity7s do |t|
      t.string :Districts
      t.float :Area
      t.float :Production
      t.float :Productivity
      t.integer :Year

      t.timestamps
    end
  end
end
