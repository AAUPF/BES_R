class CreateRuralDevelopmentProgrammes11s < ActiveRecord::Migration[5.2]
  def change
    create_table :rural_development_programmes11s do |t|
      t.string :Programme
      t.float :Trained
      t.float :Placed

      t.timestamps
    end
  end
end
