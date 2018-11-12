class CreateBiharRenewableEnergies < ActiveRecord::Migration[5.2]
  def change
    create_table :bihar_renewable_energies do |t|
      t.string :Schemes
      t.string :Physical_Achievement
      t.string :Financial_Outlay
      t.string :Year
      t.string :Indicator

      t.timestamps
    end
  end
end
