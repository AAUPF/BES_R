class CreateNewrices < ActiveRecord::Migration[5.2]
  def change
    create_table :newrices do |t|
      t.string :Districts
      t.float :Area
      t.float :Production
      t.float :Productivity
      t.float :Year
      t.float :Percentage_Area
      t.float :Percentage_Production

      t.timestamps
    end
  end
end
