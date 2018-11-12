class CreateTransmission2s < ActiveRecord::Migration[5.2]
  def change
    create_table :transmission2s do |t|
      t.string :Year
      t.string :Nos_of_New_Grid_Sub_Stations
      t.string :New_Transmission_Lines_Circuit_km

      t.timestamps
    end
  end
end
