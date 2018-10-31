class CreateIct3s < ActiveRecord::Migration[5.2]
  def change
    create_table :ict3s do |t|
      t.string :Item
      t.float :Total
      t.float :Coverage_in_percentage

      t.timestamps
    end
  end
end
