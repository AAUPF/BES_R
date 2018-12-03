class CreateDistrictWiseSections < ActiveRecord::Migration[5.2]
  def change
    create_table :district_wise_sections do |t|
      t.string :Districts
      t.float :Number_of_Handpumps_Installed
      t.float :Slipped_back_Habitations_or_Water_quality_Problems_Covered
      t.string :Year

      t.timestamps
    end
  end
end
