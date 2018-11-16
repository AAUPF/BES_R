class CreateRuralDevelopmentProgrammes6s < ActiveRecord::Migration[5.2]
  def change
    create_table :rural_development_programmes6s do |t|
      t.string :Year
      t.float :Allotment
      t.float :Lifting
      t.float :Lifting_Percentage
      t.string :Crop

      t.timestamps
    end
  end
end
