class CreateResourceManagement14s < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_management14s do |t|
      t.string :Agency
      t.string :GoI_Scheme
      t.float :"2016-17"

      t.timestamps
    end
  end
end
