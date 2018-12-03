class CreateDistrictWiseSection9s < ActiveRecord::Migration[5.2]
  def change
    create_table :district_wise_section9s do |t|
      t.string :Districts
      t.float :Affiliated_College
      t.float :Constituent_College
      t.float :Total
      t.float :Science_Arts_Commerce_College
      t.float :Engineering
      t.float :Medical
      t.float :B_Ed
      t.float :Others
      t.float :All_Colleges

      t.timestamps
    end
  end
end
