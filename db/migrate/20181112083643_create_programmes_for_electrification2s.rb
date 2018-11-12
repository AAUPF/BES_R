class CreateProgrammesForElectrification2s < ActiveRecord::Migration[5.2]
  def change
    create_table :programmes_for_electrification2s do |t|
      t.string :Agencies
      t.float :Tenth_Plan
      t.float :Eleventh_Plan
      t.float :Total
      t.float :Eleventh_Plan_Phase_II
      t.float :Twelfth_Plan
      t.float :Under_DDG
      t.float :DDG_converted_into_UEV
      t.float :Total
      t.string :Indicator
      t.string :Indicator1

      t.timestamps
    end
  end
end
