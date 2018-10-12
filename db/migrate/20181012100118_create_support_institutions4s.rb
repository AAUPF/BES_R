class CreateSupportInstitutions4s < ActiveRecord::Migration[5.2]
  def change
    create_table :support_institutions4s do |t|
      t.string :Regional_Office
      t.float :Total_Acquired_Land
      t.float :Total_Acquired_Constructed_Sheds
      t.float :Land_Reserved_for_Infrastructure_Administrative_Blocks_Roads_etc
      t.float :Total_Allotted_Land
      t.float :Total_Allotted_Constructed_Sheds
      t.float :Litigated_land
      t.float :Total_Vacant_Land_Allottable
      t.float :Total_Vacant_Constructed_Sheds_Allottable

      t.timestamps
    end
  end
end
