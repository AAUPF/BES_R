class CreateHealth15s < ActiveRecord::Migration[5.2]
  def change
    create_table :health15s do |t|
      t.string :Districts
      t.float :District_Hospital
      t.float :Referral_Hospital
      t.float :SDH
      t.float :PHC
      t.float :Health_SubCentre
      t.float :APHC
      t.float :DH_RH_SDH_PHC_HSC_APHC
      t.float :Population_Health_Institution

      t.timestamps
    end
  end
end
