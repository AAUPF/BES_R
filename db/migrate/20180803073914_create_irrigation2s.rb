class CreateIrrigation2s < ActiveRecord::Migration[5.2]
  def change
    create_table :irrigation2s do |t|
      t.string :Name_of_Scheme
      t.float :Created_Irrigation_Potential

      t.timestamps
    end
  end
end
