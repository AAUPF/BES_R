class CreateMunicipalFinances < ActiveRecord::Migration[5.2]
  def change
    create_table :municipal_finances do |t|
      t.string :Sector
      t.float :'2014-15'
      t.float :'2015-16'
      t.string :Indicator

      t.timestamps
    end
  end
end
