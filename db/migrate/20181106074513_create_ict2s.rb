class CreateIct2s < ActiveRecord::Migration[5.2]
  def change
    create_table :ict2s do |t|
      t.string :State
      t.float :Rural
      t.float :Urban
      t.float :All
      t.string :Year

      t.timestamps
    end
  end
end
