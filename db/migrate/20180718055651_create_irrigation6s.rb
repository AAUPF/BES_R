class CreateIrrigation6s < ActiveRecord::Migration[5.2]
  def change
    create_table :irrigation6s do |t|
      t.integer :Year
      t.float :Surface_Canal
      t.float :Tanks_including_Ahars_Pynes
      t.float :Tubewells_Private_and_State
      t.float :Other_Sources_Lift_Irrigation_and_Barge_Lift_Irrigation
      t.float :Total

      t.timestamps
    end
  end
end
