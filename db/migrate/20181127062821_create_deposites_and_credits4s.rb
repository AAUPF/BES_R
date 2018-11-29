class CreateDepositesAndCredits4s < ActiveRecord::Migration[5.2]
  def change
    create_table :deposites_and_credits4s do |t|
      t.string :State
      t.float :As_per_Sanction
      t.float :As_per_Utilization
      t.string :Year

      t.timestamps
    end
  end
end
