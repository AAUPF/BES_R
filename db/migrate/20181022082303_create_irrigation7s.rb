class CreateIrrigation7s < ActiveRecord::Migration[5.2]
  def change
    create_table :irrigation7s do |t|
      t.string :Scheme
      t.float :Financial_Requirement_in_Rs_crores
      t.float :Creation_of_Additional_Irrigation_Potential_in_lakh_ha
      t.float :Restoration_of_Lost_irrigation_Potential_in_lakh_ha

      t.timestamps
    end
  end
end
