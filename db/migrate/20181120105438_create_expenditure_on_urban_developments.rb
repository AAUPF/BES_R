class CreateExpenditureOnUrbanDevelopments < ActiveRecord::Migration[5.2]
  def change
    create_table :expenditure_on_urban_developments do |t|
      t.string :Year
      t.float :Housing
      t.float :Urban_Development
      t.float :Total
      t.string :Indicator

      t.timestamps
    end
  end
end
