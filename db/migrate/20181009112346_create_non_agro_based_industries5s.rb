class CreateNonAgroBasedIndustries5s < ActiveRecord::Migration[5.2]
  def change
    create_table :non_agro_based_industries5s do |t|
      t.string :Agencies
      t.string :Indicators
      t.float :KVIC
      t.float :KVI_Board
      t.float :DIC
      t.float :Total
      t.string :Year
      t.float :KVIC_Percentage
      t.float :KVI_Board_Percentage
      t.float :DIC_Percentage
      t.float :Total_Percentage

      t.timestamps
    end
  end
end
