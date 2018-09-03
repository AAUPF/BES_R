class CreateStateDomesticProduct4s < ActiveRecord::Migration[5.2]
  def change
    create_table :state_domestic_product4s do |t|
      t.string :Year
      t.float :GSDP
      t.float :NSDP
      t.float :Per_Capita_GSDP
      t.string :Reference
      t.string :Factor_Cost

      t.timestamps
    end
  end
end
