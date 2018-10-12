class CreateTourism2s < ActiveRecord::Migration[5.2]
  def change
    create_table :tourism2s do |t|
      t.string :Year
      t.float :Domestic_tourists
      t.float :Foreign_tourists
      t.float :Total_tourists

      t.timestamps
    end
  end
end
