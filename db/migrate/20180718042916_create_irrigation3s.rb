class CreateIrrigation3s < ActiveRecord::Migration[5.2]
  def change
    create_table :irrigation3s do |t|
      t.integer :Year
      t.float :Created_Irrigation_Potential
      t.float :Kharif_Target
      t.float :Kharif_Irrigation
      t.float :Rabi_Target
      t.float :Rabi_Irrigation
      t.float :Hot_Weather_Target
      t.float :Hot_Weather_Irrigation
      t.float :Total_Utilised_Irrigation_Potential
      t.float :Utilisation_Efficiency

      t.timestamps
    end
  end
end
