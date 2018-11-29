class CreateSectoralShare10s < ActiveRecord::Migration[5.2]
  def change
    create_table :sectoral_share10s do |t|
      t.string :Districts
      t.float :'2007-08'
      t.float :'2008-09'
      t.float :'2009-10'
      t.float :'2010-11'
      t.float :'2011-12'
      t.float :'2012-13'
      t.float :'2013-14'
      t.float :'2014-15'
      t.float :'2015-16'
      t.float :'2016-17'

      t.timestamps
    end
  end
end
