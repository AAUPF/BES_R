class CreateStateDomesticProduct11s < ActiveRecord::Migration[5.2]
  def change
    create_table :state_domestic_product11s do |t|
      t.string :Districts
      t.float :Target
      t.float :Achievement
      t.integer :Year

      t.timestamps
    end
  end
end
