class CreateDistrictWiseSection7s < ActiveRecord::Migration[5.2]
  def change
    create_table :district_wise_section7s do |t|
      t.string :Districts
      t.float :Total_Enrolment
      t.float :Number_of_Children_Availing_MDM_per_day
      t.float :Coverage_in_percentage
      t.string :Year

      t.timestamps
    end
  end
end
