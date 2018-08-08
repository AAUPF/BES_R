class CreateHealth8s < ActiveRecord::Migration[5.2]
  def change
    create_table :health8s do |t|
      t.integer :Year
      t.float :Institutional_Delivery

      t.timestamps
    end
  end
end
