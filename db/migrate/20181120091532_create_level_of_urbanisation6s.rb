class CreateLevelOfUrbanisation6s < ActiveRecord::Migration[5.2]
  def change
    create_table :level_of_urbanisation6s do |t|
      t.string :Year
      t.float :Municipal_Corporations
      t.float :Municipal_Councils
      t.float :Nagar_Panchayats
      t.float :Total
      t.string :Indicator

      t.timestamps
    end
  end
end
