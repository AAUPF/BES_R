class CreateOperationalAndFinancialStatus1s < ActiveRecord::Migration[5.2]
  def change
    create_table :operational_and_financial_status1s do |t|
      t.string :Item
      t.float :NBPDCL
      t.float :SBPDCL
      t.string :Year

      t.timestamps
    end
  end
end
