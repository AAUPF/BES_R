class CreateProductionProductivity8s < ActiveRecord::Migration[5.2]
  def change
    create_table :production_productivity8s do |t|
      t.string :Districts
      t.float :Area_2015
      t.float :Production_2015
      t.float :Productivity_2015
      t.float :Area_2016
      t.float :Production_2016
      t.float :Productivity_2016

      t.timestamps
    end
  end
end
