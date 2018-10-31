class CreateSupportInstitutions3s < ActiveRecord::Migration[5.2]
  def change
    create_table :support_institutions3s do |t|
      t.string :Regional_Office
      t.float :Number_of_Working_Units
      t.float :Number_of_Working_Units_under_Construction
      t.float :Number_of_Units_which_have_not_started_Construction
      t.float :Number_of_Units_Closed_in_Cancellation_Process
      t.float :Total_existing_Units

      t.timestamps
    end
  end
end
