class CreateTaxDepartment7s < ActiveRecord::Migration[5.2]
  def change
    create_table :tax_department7s do |t|
      t.string :Districts
      t.float :VAT
      t.float :CST
      t.float :ENT_Tax
      t.float :ED
      t.float :ADV_Tax
      t.float :LUX_Tax
      t.float :Entry_Tax
      t.float :Professional_Tax
      t.float :Total
      t.float :Target
      t.integer :Year

      t.timestamps
    end
  end
end
