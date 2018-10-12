class CreateNonAgroBasedIndustries2s < ActiveRecord::Migration[5.2]
  def change
    create_table :non_agro_based_industries2s do |t|
      t.string :Districts
      t.float :Sanctioned_amount_in_Rs_lakh
      t.float :Handlooms_on_which_UID_No_has_been_engraved
      t.float :Pati_looms_on_which_UID_No_has_been_engraved

      t.timestamps
    end
  end
end
