class CreateIrrigation4s < ActiveRecord::Migration[5.2]
  def change
    create_table :irrigation4s do |t|
      t.string :Status
      t.float :Management_of_irrigation_System_Transferred
      t.float :Societies_ready_for_transfer_of_system
      t.float :Applied_for_Registration
      t.float :Under_the_process_of_motivation
      t.float :Total

      t.timestamps
    end
  end
end
