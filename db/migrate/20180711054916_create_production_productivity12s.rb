class CreateProductionProductivity12s < ActiveRecord::Migration[5.2]
  def change
    create_table :production_productivity12s do |t|
      t.string :Districts
      t.float :Area
      t.float :Production
      t.float :Yield
      t.integer :Year

      t.timestamps
    end
  end
end
