class CreateLevelOfUrbanisation1s < ActiveRecord::Migration[5.2]
  def change
    create_table :level_of_urbanisation1s do |t|
      t.string :Year
      t.float :India
      t.float :Bihar
      t.string :Indicator

      t.timestamps
    end
  end
end
