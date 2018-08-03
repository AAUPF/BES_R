class CreateIrrigation5s < ActiveRecord::Migration[5.2]
  def change
    create_table :irrigation5s do |t|
      t.string :Irrigation_Sources
      t.float :Ultimate_Potential
      t.float :Created_Potential
      t.float :Utilized_Potential

      t.timestamps
    end
  end
end
