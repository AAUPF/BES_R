class CreateDistributions < ActiveRecord::Migration[5.2]
  def change
    create_table :distributions do |t|
      t.string :Year
      t.float :Domestic_Consumer
      t.float :Commercial_Consumer
      t.float :Industrial_LT_Consumer
      t.float :Industrial_HT_Consumer
      t.float :Public_Lighting_Consumer
      t.float :Traction_Consumer
      t.float :Agriculture_Consumer
      t.float :Public_Water_Works_Consumer
      t.float :Total_Consumer
      t.float :Percentage_of_Domestic_Consumer
      t.float :Percentage_of_Commercial_Consumer
      t.float :Percentage_of_Industrial_LT_Consumer
      t.float :Percentage_of_Industrial_HT_Consumer
      t.float :Percentage_of_Public_Lighting_Consumer
      t.float :Percentage_of_Agriculture_Consumer
      t.float :Percentage_of_Public_Water_Works_Consumer
      t.float :Percentage_of_Total_Consumer

      t.timestamps
    end
  end
end
