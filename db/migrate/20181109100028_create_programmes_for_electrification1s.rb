class CreateProgrammesForElectrification1s < ActiveRecord::Migration[5.2]
  def change
    create_table :programmes_for_electrification1s do |t|
      t.string :Project_Component_under_R_APDRP
      t.float :Outlay
      t.float :Expenditure_incurred

      t.timestamps
    end
  end
end
