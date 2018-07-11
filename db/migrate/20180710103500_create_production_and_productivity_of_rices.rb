class CreateProductionAndProductivityOfRices < ActiveRecord::Migration[5.2]
  def change
    create_table :production_and_productivity_of_rices do |t|
      t.string :Districts
      t.float :Area
      t.float :Production
      t.float :Productivity
      t.integer :Year

      t.timestamps
    end
  end
end
