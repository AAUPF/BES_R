class CreateRuralDevelopmentProgrammes10s < ActiveRecord::Migration[5.2]
  def change
    create_table :rural_development_programmes10s do |t|
      t.string :Districts
      t.float :Allotment
      t.float :Lifting
      t.float :Lifting_Percentage
      t.string :Crops

      t.timestamps
    end
  end
end
