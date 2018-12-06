class CreateDistrictWiseSection5s < ActiveRecord::Migration[5.2]
  def change
    create_table :district_wise_section5s do |t|
      t.string :Districts
      t.float :Primary_Schools
      t.float :Upper_Primary_Schools
      t.float :Total

      t.timestamps
    end
  end
end
