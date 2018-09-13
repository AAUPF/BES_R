class CreateTaxDepartment6s < ActiveRecord::Migration[5.2]
  def change
    create_table :tax_department6s do |t|
      t.string :Districts
      t.float :Number_of_Document
      t.float :Registration_Fees
      t.float :Stamp_Fee
      t.float :Total_Receipt
      t.float :Target
      t.string :Year

      t.timestamps
    end
  end
end
