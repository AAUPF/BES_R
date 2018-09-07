class CreateTaxDepartment1s < ActiveRecord::Migration[5.2]
  def change
    create_table :tax_department1s do |t|
      t.string :Year
      t.float :"BST/VAT"
      t.float :CST
      t.float :ENT
      t.float :ED
      t.float :ADV
      t.float :HLT
      t.float :ET
      t.float :PT
      t.float :Total

      t.timestamps
    end
  end
end
