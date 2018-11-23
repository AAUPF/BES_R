class CreateLevelOfUrbanisation5s < ActiveRecord::Migration[5.2]
  def change
    create_table :level_of_urbanisation5s do |t|
      t.string :Particulars
      t.float :Municipal_Corporations
      t.float :Municipal_Councils
      t.float :Nagar_Panchayats
      t.float :Total

      t.timestamps
    end
  end
end
