class CreateDeficitManagement1s < ActiveRecord::Migration[5.2]
  def change
    create_table :deficit_management1s do |t|
      t.string :State
      t.float :Revenue_Deficit_Surplus
      t.float :Conventional_Deficit_Surplus
      t.string :Year

      t.timestamps
    end
  end
end
