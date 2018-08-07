class CreateAnnualRainfalls < ActiveRecord::Migration[5.2]
  def change
    create_table :annual_rainfalls do |t|
      t.string :Districts
      t.float :January
      t.float :February
      t.float :March
      t.float :April
      t.float :May
      t.float :June
      t.float :July
      t.float :August
      t.float :September
      t.float :October
      t.float :November
      t.float :December
      t.integer :Year

      t.timestamps
    end
  end
end
