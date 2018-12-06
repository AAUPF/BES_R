class CreateWomenEmpowerment3s < ActiveRecord::Migration[5.2]
  def change
    create_table :women_empowerment3s do |t|
      t.string :Year
      t.float :Lakshmibai_Social_Security_Pension_Scheme
      t.float :Nari_Shakti_Yojana
      t.float :Mukhyamantri_Kanya_Vivah_Yojana
      t.float :Mukhyamantri_Kanya_Suraksha_Yojana
      t.float :Total

      t.timestamps
    end
  end
end
