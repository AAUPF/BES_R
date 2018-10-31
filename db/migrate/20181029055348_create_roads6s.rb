class CreateRoads6s < ActiveRecord::Migration[5.2]
  def change
    create_table :roads6s do |t|
      t.string :Indicator
      t.float :NH_in_kms
      t.float :Expenditure_on_NH_Development
      t.float :Expenditure_on_NH_Maintenance
      t.float :Total_Expenditure_on_NH
      t.string :Year

      t.timestamps
    end
  end
end
