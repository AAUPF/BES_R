class CreateAgriculturalCredit2s < ActiveRecord::Migration[5.2]
  def change
    create_table :agricultural_credit2s do |t|
      t.string :Districts
      t.float :Target_2014
      t.float :Target_2015
      t.float :Target_2016
      t.float :Achievement_2014
      t.float :Achievement_2015
      t.float :Achievement_2016

      t.timestamps
    end
  end
end
