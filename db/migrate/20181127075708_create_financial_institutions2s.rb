class CreateFinancialInstitutions2s < ActiveRecord::Migration[5.2]
  def change
    create_table :financial_institutions2s do |t|
      t.string :Sectors
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
