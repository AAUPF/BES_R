class CreateDeficitManagement3s < ActiveRecord::Migration[5.2]
  def change
    create_table :deficit_management3s do |t|
      t.string :Gross_Fiscal_Deficit
      t.float :Amount
      t.integer :Year

      t.timestamps
    end
  end
end
