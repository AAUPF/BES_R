class CreateDistrictWiseSection2s < ActiveRecord::Migration[5.2]
  def change
    create_table :district_wise_section2s do |t|
      t.string :Districts
      t.float :Primary1
      t.float :Upper_Primary
      t.string :Total
      t.string :Year

      t.timestamps
    end
  end
end
