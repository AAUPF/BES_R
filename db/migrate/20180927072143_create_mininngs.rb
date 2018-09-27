class CreateMininngs < ActiveRecord::Migration[5.2]
  def change
    create_table :mininngs do |t|
      t.string :Sector
      t.float :'2014-15'
      t.float :'2015-16'
      t.float :'2016-17'

      t.timestamps
    end
  end
end
