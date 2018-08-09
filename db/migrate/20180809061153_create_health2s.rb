class CreateHealth2s < ActiveRecord::Migration[5.2]
  def change
    create_table :health2s do |t|
      t.string :Region
      t.float :Male
      t.float :Female
      t.float :Total
      t.string :Year

      t.timestamps
    end
  end
end
