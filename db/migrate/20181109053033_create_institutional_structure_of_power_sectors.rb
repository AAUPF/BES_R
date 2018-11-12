class CreateInstitutionalStructureOfPowerSectors < ActiveRecord::Migration[5.2]
  def change
    create_table :institutional_structure_of_power_sectors do |t|
      t.string :Years
      t.float :BRGF
      t.float :State_Plan_BSPHCL
      t.float :State_Plan_Generation
      t.float :State_Plan_Transmission
      t.float :State_Plan_Distribution
      t.float :State_Plan_BREDA
      t.float :State_Plan_BSHPC
      t.float :BSHPC_RIDF
      t.float :EAP
      t.float :Mukhya_Mantri_Vidyut_Sambandh_Nishchay_Yojna
      t.float :Total

      t.timestamps
    end
  end
end
