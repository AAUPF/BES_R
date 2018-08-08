class CreateHealth10s < ActiveRecord::Migration[5.2]
  def change
    create_table :health10s do |t|
      t.string :Antigenname
      t.float :Target
      t.float :Achievement
      t.integer :Year

      t.timestamps
    end
  end
end
