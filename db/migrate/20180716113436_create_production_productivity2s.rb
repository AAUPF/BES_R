class CreateProductionProductivity2s < ActiveRecord::Migration[5.2]
  def change
    create_table :production_productivity2s do |t|
      t.integer :Year
      t.float :Total_Cereals
      t.float :Total_Rice
      t.float :Autumn_Rice
      t.float :Aghani_Rice
      t.float :Summer_Rice
      t.float :Wheat
      t.float :Total_Maize
      t.float :Kharif_Maize
      t.float :Rabi_Maize
      t.float :Summer_Maize
      t.float :Total_Coarse_Cereals
      t.float :Barley
      t.float :Jowar
      t.float :Bajra
      t.float :Ragi
      t.float :Small_Millets
      t.float :Total_Pulses
      t.float :Total_Kharif_Pulses
      t.float :Urad
      t.float :Bhadai_Moong
      t.float :Kulthi
      t.float :Ghagra
      t.float :Other_Kharif_Pulses
      t.float :Total_Rabi_Pulses
      t.float :Arhar_Tur
      t.float :Gram
      t.float :Lentil
      t.float :Pea
      t.float :Khesari
      t.float :Summer_Moong
      t.float :Other_Rabi_Pulses
      t.float :Total_Oilseeds
      t.float :Castor_seed
      t.float :Safflower_Kusum
      t.float :Sesamum
      t.float :Sunflower
      t.float :Mustard
      t.float :Linseed
      t.float :Ground_Nut
      t.float :Total_Fibre_Crops
      t.float :Jute
      t.float :Mesta
      t.float :Sugarcane

      t.timestamps
    end
  end
end
