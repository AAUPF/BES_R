class CreateHealth7s < ActiveRecord::Migration[5.2]
  def change
    create_table :health7s do |t|
      t.string :Name_of_the_Post
      t.float :Regular_Total_Sanctioned_Posts
      t.float :Regular_Working
      t.float :Contractual_Sanctioned_Posts
      t.float :Contractual_Working
      t.integer :Year

      t.timestamps
    end
  end
end
