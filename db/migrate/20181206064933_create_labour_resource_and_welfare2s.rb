class CreateLabourResourceAndWelfare2s < ActiveRecord::Migration[5.2]
  def change
    create_table :labour_resource_and_welfare2s do |t|
      t.string :Programme
      t.float :Budget_outlay
      t.float :Financial_Achievement
      t.string :Year

      t.timestamps
    end
  end
end
