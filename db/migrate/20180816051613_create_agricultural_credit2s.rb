class CreateAgriculturalCredit2s < ActiveRecord::Migration[5.2]
  def change
    create_table :agricultural_credit2s do |t|
      t.string :Districts
      t.float :Target
      t.float :Achievement
      t.integer :Year
      t.float :Percentage_Target
      t.float :Percentage_Achievement

      t.timestamps
    end
  end
end
