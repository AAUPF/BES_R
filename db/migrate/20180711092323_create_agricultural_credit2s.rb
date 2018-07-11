class CreateAgriculturalCredit2s < ActiveRecord::Migration[5.2]
  def change
    create_table :agricultural_credit2s do |t|
      t.string :Districts
      t.float :Target
      t.float :Achievement
      t.integer :Year

      t.timestamps
    end
  end
end
