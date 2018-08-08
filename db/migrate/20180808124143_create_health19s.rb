class CreateHealth19s < ActiveRecord::Migration[5.2]
  def change
    create_table :health19s do |t|
      t.string :Districts
      t.float :Target
      t.float :Selection
      t.integer :Year

      t.timestamps
    end
  end
end
