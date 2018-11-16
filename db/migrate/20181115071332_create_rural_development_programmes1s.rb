class CreateRuralDevelopmentProgrammes1s < ActiveRecord::Migration[5.2]
  def change
    create_table :rural_development_programmes1s do |t|
      t.string :Items
      t.float :Progress
      t.string :Year

      t.timestamps
    end
  end
end
