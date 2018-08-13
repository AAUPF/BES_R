class CreateTesties < ActiveRecord::Migration[5.2]
  def change
    create_table :testies do |t|
      t.string :name
      t.float :number

      t.timestamps
    end
  end
end
