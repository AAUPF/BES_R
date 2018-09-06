class CreateTaxDepartment3s < ActiveRecord::Migration[5.2]
  def change
    create_table :tax_department3s do |t|
      t.string :Name_of_Commodity
      t.float :Collection
      t.float :Rate_of_Growth
      t.string :Year

      t.timestamps
    end
  end
end
