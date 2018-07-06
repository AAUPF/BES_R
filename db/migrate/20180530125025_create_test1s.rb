class CreateTest1s < ActiveRecord::Migration[5.2]
  def change
    create_table :test1s do |t|
      t.string :name
      t.string :title

      t.timestamps
    end
  end
end
