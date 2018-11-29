class CreateDepositesAndCredits5s < ActiveRecord::Migration[5.2]
  def change
    create_table :deposites_and_credits5s do |t|
      t.string :Districts
      t.float :CD_Ratio
      t.string :Year

      t.timestamps
    end
  end
end
