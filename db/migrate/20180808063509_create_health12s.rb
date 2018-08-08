class CreateHealth12s < ActiveRecord::Migration[5.2]
  def change
    create_table :health12s do |t|
      t.string :NRHM
      t.float :Fund_Disbursed
      t.integer :Year

      t.timestamps
    end
  end
end
