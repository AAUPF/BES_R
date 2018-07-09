class CreateProductionProductivity12s < ActiveRecord::Migration[5.2]
  def change
    create_table :production_productivity12s do |t|
      t.string :Districts
      t.float :Area_2015
      t.float :Production_2015
      t.float :Yield_2015
      t.float :Area_2016
      t.float :Production_2016
      t.float :Yield_2016

      t.timestamps
    end
  end
end
