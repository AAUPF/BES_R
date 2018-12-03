class CreateDistrictWiseSection8s < ActiveRecord::Migration[5.2]
  def change
    create_table :district_wise_section8s do |t|
      t.string :Districts
      t.float :Affiliated_College
      t.float :Constituent_College
      t.string :Year

      t.timestamps
    end
  end
end
