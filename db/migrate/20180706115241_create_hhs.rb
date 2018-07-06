class CreateHhs < ActiveRecord::Migration[5.2]
  def change
    create_table :hhs do |t|
      t.string :name

      t.timestamps
    end
  end
end
