class CreatePanchayatiRaj1s < ActiveRecord::Migration[5.2]
  def change
    create_table :panchayati_raj1s do |t|
      t.string :Item
      t.float :Number
      t.float :Number_of_Members_or_Functionaries
      t.float :Average_Number_of_Members_per_Panchayat

      t.timestamps
    end
  end
end
