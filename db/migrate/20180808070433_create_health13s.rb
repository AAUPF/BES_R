class CreateHealth13s < ActiveRecord::Migration[5.2]
  def change
    create_table :health13s do |t|
      t.string :Posts
      t.float :No_of_Sanctioned_Posts
      t.float :Working
      t.float :Percentage_of_Vacant_Post
      t.integer :Year

      t.timestamps
    end
  end
end
