class CreateHealth21s < ActiveRecord::Migration[5.2]
  def change
    create_table :health21s do |t|
      t.string :Districts
      t.float :Acute_Diarrheal_Disease
      t.float :Bacillary_Dysentery
      t.float :Viral_Hepatitis
      t.float :Enteric_Fever
      t.float :Malaria
      t.float :PUO
      t.float :Acute_Respiratory_Infection
      t.float :Pneumonia
      t.float :Dogbite
      t.float :Other_State_Specific_Disease
      t.float :Unusual_Syndromes_Not_Captured

      t.timestamps
    end
  end
end
