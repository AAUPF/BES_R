class CreateRegionalDisparities < ActiveRecord::Migration[5.2]
  def change
    create_table :regional_disparities do |t|
      t.string :Criteria
      t.string :Top_3_District
      t.string :Bottom_3_District

      t.timestamps
    end
  end
end
