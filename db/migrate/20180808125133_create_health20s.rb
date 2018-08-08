class CreateHealth20s < ActiveRecord::Migration[5.2]
  def change
    create_table :health20s do |t|
      t.string :Districts
      t.float :Institutional_Deliveries
      t.integer :Year

      t.timestamps
    end
  end
end
