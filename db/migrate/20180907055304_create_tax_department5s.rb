class CreateTaxDepartment5s < ActiveRecord::Migration[5.2]
  def change
    create_table :tax_department5s do |t|
      t.string :Districts
      t.float :Number_of_Document
      t.float :Total_Receipt
      t.float :Target
      t.float :Percentage_receipt_against_target
      t.float :Receipt_per_Document

      t.timestamps
    end
  end
end
