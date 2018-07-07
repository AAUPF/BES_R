class CreateProductionProductivity11s < ActiveRecord::Migration[5.2]
  def change
    create_table :production_productivity11s do |t|
      t.string :Districts
      t.float :Potato_Area_2015
      t.float :Potato_Production_2015
      t.float :Potato_Area_2016
      t.float :Potato_Production_2016
      t.float :Onion_Area_2015
      t.float :Onion_Production_2015
      t.float :Onion_Area_2016
      t.float :Onion_Production_2016
      t.float :Cauliflower_Area_2015
      t.float :Cauliflower_Production_2015
      t.float :Cauliflower_Area_2016
      t.float :Cauliflower_Production_2016
      t.float :Brinjal_Area_2015
      t.float :Brinjal_Production_2015
      t.float :Brinjal_Area_2016
      t.float :Brinjal_Production_2016

      t.timestamps
    end
  end
end
