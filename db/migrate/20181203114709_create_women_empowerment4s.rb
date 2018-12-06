class CreateWomenEmpowerment4s < ActiveRecord::Migration[5.2]
  def change
    create_table :women_empowerment4s do |t|
      t.string :Types_of_Cases
      t.float :Registered
      t.float :Disposed
      t.float :Percentage_of_Case_Disposed
      t.string :Year

      t.timestamps
    end
  end
end
