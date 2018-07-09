class CreateAgriculturalInputs6s < ActiveRecord::Migration[5.2]
  def change
    create_table :agricultural_inputs6s do |t|
      t.string :Districts
      t.float :Target_Physical
      t.float :Target_Financial
      t.float :Achievement_Physical
      t.float :Achievement_Financial

      t.timestamps
    end
  end
end
