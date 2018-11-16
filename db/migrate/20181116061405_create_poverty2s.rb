class CreatePoverty2s < ActiveRecord::Migration[5.2]
  def change
    create_table :poverty2s do |t|
      t.string :Population_below_poverty_line_in_Percentages
      t.string :Rural_poverty
      t.string :Urban_poverty
      t.string :Total_poverty

      t.timestamps
    end
  end
end
