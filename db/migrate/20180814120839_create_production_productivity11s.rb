class CreateProductionProductivity11s < ActiveRecord::Migration[5.2]
  def change
    create_table :production_productivity11s do |t|
      t.string :Districts
      t.float :Potato_Area
      t.float :Potato_Production
      t.float :Onion_Area
      t.float :Onion_Production
      t.float :Cauliflower_Area
      t.float :Cauliflower_Production
      t.float :Brinjal_Area
      t.float :Brinjal_Production
      t.integer :Year
      t.float :Percentage_Potato_Area
      t.float :Percentage_Potato_Production
      t.float :Percentage_Onion_Area
      t.float :Percentage_Onion_Production
      t.float :Percentage_Cauliflower_Area
      t.float :Percentage_Cauliflower_Production
      t.float :Percentage_Brinjal_Area
      t.float :Percentage_Brinjal_Production

      t.timestamps
    end
  end
end
