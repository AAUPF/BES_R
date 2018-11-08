class CreateIct4s < ActiveRecord::Migration[5.2]
  def change
    create_table :ict4s do |t|
      t.string :State
      t.float :Rural
      t.float :Urban
      t.float :Total
      t.float :Rural_Percentage
      t.float :Urban_Percentage
      t.float :Share_in_all_India
      t.string :Indicator

      t.timestamps
    end
  end
end
