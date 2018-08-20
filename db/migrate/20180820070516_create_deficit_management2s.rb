class CreateDeficitManagement2s < ActiveRecord::Migration[5.2]
  def change
    create_table :deficit_management2s do |t|
      t.string :State
      t.float :Gross_Fiscal_Deficit
      t.string :Year

      t.timestamps
    end
  end
end
