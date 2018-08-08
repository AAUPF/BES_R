class CreateHealth22s < ActiveRecord::Migration[5.2]
  def change
    create_table :health22s do |t|
      t.string :Districts
      t.float :NRHM_Total
      t.integer :Year

      t.timestamps
    end
  end
end
