class CreateSectoralShare7s < ActiveRecord::Migration[5.2]
  def change
    create_table :sectoral_share7s do |t|
      t.string :State
      t.float :'2013-14'
      t.float :'2014-15'
      t.float :'2015-16'
      t.string :Indicator

      t.timestamps
    end
  end
end
